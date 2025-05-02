cd(normpath(joinpath(@__DIR__, "..")))

using LinearAlgebra, Statistics, Printf, SpecialFunctions, JLD2, DataFrames, Plots

# ========================================================
# 0. Country-Specific Parameter Function
# ========================================================
function get_country_params(country::String)
    cc_int = 1 # equals 1 when there is hurricane risk
    cc_freq = 1 # equals 1 when there is hurricane risk
    country == "Jamaica"  # (for completeness)
    return (
        sigma_ey = 0.026,
        rho_y = 0.96,
        beta = 0.93,
        wc_par_asymm = 0.74,
        delta = 0.0564,
        sigma_eh = 0.02,
        mean_h = 1 - cc_int * 0.023,
        p_hu = cc_freq * 0.103,
        f_CAT  = 0.55,   # B_CAT = 1.55% of outstanding b
        Π_cat  = 0.0571
    )
end

# ========================================================
# 1. EXOGENOUS PROCESS SETUP: Income and Hurricane Grids
# ========================================================
function setup_exogenous_process(N_y, N_h, int_y, int_h, sigma_ey, rho_y, sigma_eh, p_hu, cc_int, mean_h)
    # --- Income Process ---
    N = N_y
    mu_val = -0.5 * sigma_ey^2 / (1 - rho_y^2)
    rho_val = rho_y
    sigma_val = sigma_ey
    m = int_y
    Z = zeros(Float64, N)
    Zprob = zeros(Float64, N, N)
    a = (1 - rho_val) * mu_val

    Z[N] = m * sqrt(sigma_val^2 / (1 - rho_val^2))
    Z[1] = -Z[N]
    zstep = (Z[N] - Z[1]) / (N - 1)
    for i in 2:(N - 1)
        Z[i] = Z[1] + zstep * (i - 1)
    end

    Z .= Z .+ a / (1 - rho_val)
    for j in 1:N
        for k in 1:N
            if k == 1
                Zprob[j, k] = 0.5 * erfc(-((Z[1] - a - rho_val * Z[j] + zstep / 2) / sigma_val) / sqrt(2))
            elseif k == N
                Zprob[j, k] = 1 - 0.5 * erfc(-((Z[N] - a - rho_val * Z[j] - zstep / 2) / sigma_val) / sqrt(2))
            else
                Zprob[j, k] = 0.5 * erfc(-((Z[k] - a - rho_val * Z[j] + zstep / 2) / sigma_val) / sqrt(2)) -
                              0.5 * erfc(-((Z[k] - a - rho_val * Z[j] - zstep / 2) / sigma_val) / sqrt(2))
            end
        end
    end
    ly_vec = copy(Z)
    P_y = copy(Zprob)
    @printf("Julia: ly_vec and P_y generated. Size ly_vec: %d, P_y: %d x %d\n", length(ly_vec), size(P_y, 1), size(P_y, 2))

    # --- Hurricane Process ---
    if N_h > 1
        N = N_h - 1
        mu_val = -0.5 * sigma_eh^2
        rho_val = 0.0
        sigma_val = sigma_eh
        m = int_h
        Z = zeros(Float64, N)
        Zprob = zeros(Float64, N, N)
        a = (1 - rho_val) * mu_val

        Z[N] = m * sqrt(sigma_val^2 / (1 - rho_val^2))
        Z[1] = -Z[N]
        zstep = (Z[N] - Z[1]) / (N - 1)
        for i in 2:(N - 1)
            Z[i] = Z[1] + zstep * (i - 1)
        end
        Z .= Z .+ a / (1 - rho_val)
        for j in 1:N
            for k in 1:N
                if k == 1
                    Zprob[j, k] = 0.5 * erfc(-((Z[1] - a - rho_val * Z[j] + zstep / 2) / sigma_val) / sqrt(2))
                elseif k == N
                    Zprob[j, k] = 1 - 0.5 * erfc(-((Z[N] - a - rho_val * Z[j] - zstep / 2) / sigma_val) / sqrt(2))
                else
                    Zprob[j, k] = 0.5 * erfc(-((Z[k] - a - rho_val * Z[j] + zstep / 2) / sigma_val) / sqrt(2)) -
                                  0.5 * erfc(-((Z[k] - a - rho_val * Z[j] - zstep / 2) / sigma_val) / sqrt(2))
                end
            end
        end
        lh_vec = copy(Z)
        P_h = copy(Zprob)
        P_h .= p_hu .* P_h
        left_col = (1 - p_hu) * ones(Float64, N_h - 1, 1)
        P_h = hcat(left_col, P_h)
        P_h = vcat(P_h[1, :]', P_h)
    else
        lh_vec = [1.0]
        P_h = [1.0]
    end
    @printf("Julia: Hurricane process generated:\nSize of lh_vec: %d\nSize of P_h: %d x %d\n", length(lh_vec), size(P_h, 1), size(P_h, 2))

    # --- Combine into P_x ---
    y_vec = exp.(ly_vec)
    h_vec = mean_h .* exp.(lh_vec)
    h_vec = vcat(1.0, h_vec)

    h_vec_gdp = kron(ones(N_y, 1), h_vec)
    y_vec_gdp = kron(y_vec, ones(N_h, 1))
    gdp_vec = h_vec_gdp .* y_vec_gdp
    @printf("Julia: gdp_vec defined: %d x %d\n", size(gdp_vec, 1), size(gdp_vec, 2))

    N_x = N_y * N_h
    P_x_int = zeros(Float64, N_x, N_y)
    index_store = zeros(Int, N_x)
    for bibi in 1:size(gdp_vec, 1)
        prova = gdp_vec[bibi, 1]
        prova2 = (prova .- y_vec).^2
        index = argmin(prova2)
        index_store[bibi] = index
        P_x_int[bibi, :] = P_y[index, :]
    end
    P_x = kron(P_x_int, ones(1, N_h))
    P_h_int = kron(ones(N_y, N_y), P_h)
    P_x .= P_h_int .* P_x
    println("Julia: P_x constructed.")

    return (ly_vec, P_y, lh_vec, P_h, y_vec, h_vec, gdp_vec, P_x)
end

# ========================================================
# 2a. Function for the Initial Guess for the Pricing Function
# ========================================================
function compute_quarterly_debt_prices(r_vec, delta)
    qrf_vec = (1 .+ r_vec).^(-1)
    qrf_lt = qrf_vec[1] / (1 - (1 - delta) * qrf_vec[1])
    @printf("Julia: qrf_lt = %f\n", qrf_lt)
    return qrf_lt, qrf_vec
end

# ========================================================
# 2b. Function to Compute the Utility Under Default
# ========================================================
function compute_autarky_utility(h_vec_2sh, y_vec_2sh, wc_par_asymm, gdp_mean, gamma_c)
    c_aut = h_vec_2sh .* y_vec_2sh
    c_aut = map(x -> x > wc_par_asymm * gdp_mean ? wc_par_asymm * gdp_mean : x, c_aut)
    util_aut = 1 / (1 - gamma_c) * c_aut.^(1 - gamma_c)
    util_aut_rn = copy(c_aut)
    @printf("Julia: Utility under autarky computed.\n")
    return util_aut, util_aut_rn
end

# ========================================================
# 3. Default Iteration and Value Function Iteration
# Incorporating the Debt Relief Branch in the Pricing Outer Loop
# ========================================================

function default_iteration_2P_RN!(; sigma_ey, rho_y, beta, wc_par_asymm, delta, mu_r,
    gamma_c, ev_rho, ev_rho_def, eulgam,
    N_y, N_h, N_x, N_b_g, qrf_lt, qrf_vec, gdp_mean, P_x,
    y_vec_2sh, h_vec_2sh, util_aut, util_aut_rn, λ,
    damp_v=0.8, damp_q=0.8, maxiter_v=300, maxiter_q=600, tol_v=1e-3, tol_q=1e-6)

    #########################################################################
    # 1. Debt Grid Construction and State-Space Setup
    #########################################################################
    single_space = false
    b_g_min = -0.05
    b_g_max = 1.18
    if single_space
        b_g_vec = collect(range(b_g_min, stop=b_g_max, length=N_b_g))
    else
        b_g_mid = 0.3
        N_b_g_mid = floor(Int, 0.85 * N_b_g)
        low_bound = b_g_min
        mid_point = b_g_mid
        upp_bound = b_g_max
        N_1 = N_b_g_mid
        N_tot = N_b_g
        if N_1 > 0 && N_1 < N_tot && ((low_bound < mid_point && mid_point < upp_bound) || (low_bound > mid_point && mid_point > upp_bound))
            y_1 = collect(range(low_bound, stop=mid_point, length=N_1))
            y_2 = collect(range(mid_point + (upp_bound - mid_point) / (N_tot - N_1), stop=b_g_max, length=N_tot - N_1))
            b_g_vec = vcat(y_1, y_2)
        else
            b_g_vec = collect(range(low_bound, stop=b_g_max, length=N_tot))
        end
    end
    b_g_vec = reshape(b_g_vec, 1, length(b_g_vec))
    i_b_g_zero = argmin(abs.(b_g_vec))
    b_g_vec[i_b_g_zero] = 0.0

    b_state_grid = reshape(repeat(b_g_vec, outer=(N_x, 1, N_b_g)), N_x, N_b_g, N_b_g)
    b_choice_2grid = reshape(repeat(b_g_vec, outer=(N_x, 1)), N_x, N_b_g)
    y_state_grid = reshape(repeat(y_vec_2sh, outer=(1, N_b_g, N_b_g)), N_x, N_b_g, N_b_g)
    h_state_grid = reshape(repeat(h_vec_2sh, outer=(1, N_b_g, N_b_g)), N_x, N_b_g, N_b_g)
    
    #########################################################################
    # 2. Debt Relief Setup
    #########################################################################
    share = 0.0  # Set to 0.0 so that all debt in a hurricane state follows the relief branch.
    dummy_rel_vec = map(h -> h < 1.0 ? 1 : 0, h_vec_2sh)
    dummy_rel = repeat(reshape(dummy_rel_vec, N_x, 1), 1, N_b_g)
    # << NEW >> Initialize separate relief branch value functions:
    v_rel_guess = zeros(N_x, N_b_g)
    v_rel_guess_rn = zeros(N_x, N_b_g)

    #########################################################################
    # 3. Initialization of Value Functions and Bond Prices
    #########################################################################
    q_g = fill(qrf_lt, N_x, N_b_g)

    v_guess = zeros(N_x, N_b_g)
    v_bad_guess = zeros(N_x)
    v_guess_rn = zeros(N_x, N_b_g)
    v_bad_guess_rn = zeros(N_x)
    # In the inner loop we compute default probabilities separately for standard and relief.
    def_std = fill(NaN, N_x, N_b_g)
    def_rel = fill(NaN, N_x, N_b_g)
    # We then merge: def_only_pf (standard) and rel_only_pf (relief).
    # For now, def_new (final) will be computed as def_std + def_rel.
    def_new = fill(NaN, N_x, N_b_g)
    
    q_g_pf = zeros(N_x, N_b_g)
    q_g_rel_pf = zeros(N_x, N_b_g)

    diff_q = 7.0
    iter_q = 1
    log_diff_q = Float64[]
    prob_choice = zeros(N_x, N_b_g, N_b_g)
    prob_choice_rel = zeros(N_x, N_b_g, N_b_g)
    
    #########################################################################
    # 4. Outer Loop: Bond Price Update (Pricing Outer Loop)
    #########################################################################
    while diff_q > tol_q && iter_q < maxiter_q
        # --- Begin Inner Loop: Value Function Iteration (VFI) Update ---
        diff_v = 7.0
        iter_v = 1
        while diff_v > tol_v && iter_v < maxiter_v
            # --- Standard (Risk-Averse) Branch ---
            e_v_guess = P_x * v_guess
            temp = repeat(e_v_guess, 1, 1, N_b_g)
            e_v_guess_3grid = permutedims(temp, (1, 3, 2))
            v_badgood_guess = v_guess[:, i_b_g_zero[2]]
            e_v_badgood_guess = P_x * v_badgood_guess
            e_v_bad_guess = P_x * v_bad_guess

            temp_qg = repeat(q_g, 1, 1, N_b_g)
            q_g_3d = permutedims(temp_qg, (1, 3, 2))
            temp_bchoice = repeat(b_choice_2grid, 1, 1, N_b_g)
            b_choice_3d = permutedims(temp_bchoice, (1, 3, 2))
            borr_rev_choice_3grid = q_g_3d .* (b_choice_3d .- (1 - delta) .* b_state_grid)
            cons_choice = h_state_grid .* y_state_grid .- b_state_grid .+ borr_rev_choice_3grid
            cons_choice .= map(x -> x < eps() ? eps() : x, cons_choice)
            util_choice = (1 / (1 - gamma_c)) .* cons_choice.^(1 - gamma_c)
            borrower_maximand = util_choice .+ beta .* e_v_guess_3grid

            N1, N2, N3 = size(borrower_maximand)
            v_good_guess_noev = Array{Float64}(undef, N1, N2)
            i_b_max_new_noev = Array{Int}(undef, N1, N2)
            for i in 1:N1, j in 1:N2
                idx = argmax(borrower_maximand[i, j, :])
                i_b_max_new_noev[i, j] = idx
                v_good_guess_noev[i, j] = borrower_maximand[i, j, idx]
            end

            temp_max = repeat(v_good_guess_noev, 1, 1, N_b_g)
            prob_choice = exp.((borrower_maximand .- temp_max) / ev_rho) ./
                           sum(exp.((borrower_maximand .- temp_max) / ev_rho), dims=3)
            norma_explog = repeat(v_good_guess_noev, 1, 1, N_b_g)
            temp_exp = sum(exp.((1 / ev_rho) .* (borrower_maximand .- norma_explog)), dims=3)
            temp_exp = dropdims(temp_exp, dims=3)
            v_good_guess_new = eulgam * ev_rho .+ v_good_guess_noev .+ ev_rho .* log.(temp_exp)
            v_bad_guess_new = util_aut .+ beta .* (λ .* e_v_badgood_guess .+ (1 - λ) .* e_v_bad_guess)
            temp_bad = repeat(v_bad_guess_new, 1, N_b_g)
            def_std = 1 .- (exp.(ev_rho_def .* (temp_bad .- v_good_guess_new)) .+ 1).^-1

            temp_bad2 = repeat(v_bad_guess_new, 1, N_b_g)
            v_guess_new = eulgam * ev_rho .+ v_good_guess_new .+ ev_rho .* log.(1 .+ exp.((1 / ev_rho) .* (-v_good_guess_new .+ temp_bad2)))
            v_guess_new_flip = eulgam * ev_rho .+ temp_bad2 .+ ev_rho .* log.(1 .+ exp.((1 / ev_rho) .* (v_good_guess_new .- temp_bad2)))
            for idx in eachindex(def_std)
                if def_std[idx] > 0.999
                    v_guess_new[idx] = v_guess_new_flip[idx]
                end
            end

            # --- DEBT RELIEF BRANCH ---
            # Use the separate relief value function in computing the expected value.
            e_v_rel_guess = P_x * v_rel_guess  # <--- Modified!
            temp_rel = repeat(e_v_rel_guess, 1, 1, N_b_g)
            e_v_rel_guess_3grid = permutedims(temp_rel, (1, 3, 2))
            cons_rel_choice = h_state_grid .* y_state_grid .- share .* b_state_grid .+ 
                               permutedims(repeat(q_g, 1, 1, N_b_g), (1, 3, 2)).*(
                                 permutedims(repeat(b_choice_2grid, 1, 1, N_b_g), (1, 3, 2)) - 
                                 share .* (1 - delta) .* b_state_grid - (1 - share) .* (1 + mu_r) .* b_state_grid)
            cons_rel_choice .= map(x -> x < eps() ? eps() : x, cons_rel_choice)
            util_rel_choice = (1 / (1 - gamma_c)) .* cons_rel_choice.^(1 - gamma_c)
            borrower_maximand_rel = util_rel_choice .+ beta .* e_v_rel_guess_3grid

            v_good_guess_noev_rel = Array{Float64}(undef, N1, N2)
            i_b_max_new_noev_rel = Array{Int}(undef, N1, N2)
            for i in 1:N1, j in 1:N2
                idx = argmax(borrower_maximand_rel[i, j, :])
                i_b_max_new_noev_rel[i, j] = idx
                v_good_guess_noev_rel[i, j] = borrower_maximand_rel[i, j, idx]
            end

            temp_max_rel = repeat(v_good_guess_noev_rel, 1, 1, N_b_g)
            prob_choice_rel = exp.((borrower_maximand_rel .- temp_max_rel) / ev_rho) ./
                              sum(exp.((borrower_maximand_rel .- temp_max_rel) / ev_rho), dims=3)
            norma_explog_rel = repeat(v_good_guess_noev_rel, 1, 1, N_b_g)
            temp_exp_rel = sum(exp.((1 / ev_rho) .* (borrower_maximand_rel .- norma_explog_rel)), dims=3)
            temp_exp_rel = dropdims(temp_exp_rel, dims=3)
            v_good_guess_new_rel = eulgam * ev_rho .+ v_good_guess_noev_rel .+ ev_rho .* log.(temp_exp_rel)
            temp_bad_rel = repeat(v_bad_guess_new, 1, N_b_g)
            def_rel = 1 .- (exp.(ev_rho_def .* (temp_bad_rel .- v_good_guess_new_rel)) .+ 1).^-1
            for idx in eachindex(dummy_rel)
                if dummy_rel[idx] == 0
                    def_rel[idx] = 0.0
                end
            end

            # << NEW >> Update the relief branch value function using its candidate value.
            v_rel_guess = damp_v .* v_good_guess_new_rel + (1 - damp_v) .* v_rel_guess

            # Merge default probabilities:
            def_new = def_std .+ def_rel

            # Merge value functions: in states with dummy_rel==1, use the relief branch value.
            v_guess_new_combined = (1 .- dummy_rel) .* v_guess_new + dummy_rel .* v_rel_guess
            v_guess_new = v_guess_new_combined

            # --- Risk Neutral Branch (unchanged) ---
            e_v_guess_rn = P_x * v_guess_rn
            temp_rn = repeat(e_v_guess_rn, 1, 1, N_b_g)
            e_v_guess_3grid_rn = permutedims(temp_rn, (1, 3, 2))
            v_badgood_guess_rn = v_guess_rn[:, i_b_g_zero[2]]
            e_v_badgood_guess_rn = P_x * v_badgood_guess_rn
            e_v_bad_guess_rn = P_x * v_bad_guess_rn

            temp_qg_rn = repeat(q_g, 1, 1, N_b_g)
            q_g_3d_rn = permutedims(temp_qg_rn, (1, 3, 2))
            temp_bchoice_rn = repeat(b_choice_2grid, 1, 1, N_b_g)
            b_choice_3d_rn = permutedims(temp_bchoice_rn, (1, 3, 2))
            borr_rev_choice_3grid_rn = q_g_3d_rn .* (b_choice_3d_rn .- (1 - delta) .* b_state_grid)
            cons_choice_rn = h_state_grid .* y_state_grid .- b_state_grid .+ borr_rev_choice_3grid_rn
            cons_choice_rn .= map(x -> x < eps() ? eps() : x, cons_choice_rn)
            util_choice_rn = cons_choice_rn  # risk neutral: utility = consumption
            borrower_maximand_rn = util_choice_rn .+ beta .* e_v_guess_3grid_rn

            v_good_guess_noev_rn = zeros(N1, N2)
            for i in 1:N1, j in 1:N2
                v_good_guess_noev_rn[i,j] = borrower_maximand_rn[i,j, i_b_max_new_noev[i,j]]
            end
            temp_max_rn = repeat(v_good_guess_noev_rn, 1, 1, N_b_g)
            norma_explog_rn = repeat(v_good_guess_noev_rn, 1, 1, N_b_g)
            temp_exp_rn = sum(exp.((1 / ev_rho) .* (borrower_maximand_rn .- norma_explog_rn)), dims=3)
            temp_exp_rn = dropdims(temp_exp_rn, dims=3)
            v_good_guess_new_rn = eulgam * ev_rho .+ v_good_guess_noev_rn .+ ev_rho .* log.(temp_exp_rn)
            v_bad_guess_new_rn = util_aut_rn .+ beta .* (λ .* e_v_badgood_guess_rn .+ (1 - λ) .* e_v_bad_guess_rn)
            temp_bad_rn = repeat(v_bad_guess_new_rn, 1, N_b_g)
            v_guess_new_rn = eulgam * ev_rho .+ v_good_guess_new_rn .+ ev_rho .* log.(1 .+ exp.((1 / ev_rho) .* (-v_good_guess_new_rn .+ temp_bad_rn)))
            v_guess_new_flip_rn = eulgam * ev_rho .+ temp_bad_rn .+ ev_rho .* log.(1 .+ exp.((1 / ev_rho) .* (v_good_guess_new_rn .- temp_bad_rn)))
            for idx in eachindex(def_new)
                if def_new[idx] > 0.999
                    v_guess_new_rn[idx] = v_guess_new_flip_rn[idx]
                end
            end
            temp_bad_rn_rep = repeat(v_bad_guess_new_rn, 1, N_b_g)
            v_guess_new_rn[v_guess_new_rn .== Inf] .= temp_bad_rn_rep[v_guess_new_rn .== Inf]

            # --- End Inner Loop: Update Value Function Guesses ---
            v_old = copy(v_guess)
            v_bad_old = copy(v_bad_guess)
            v_old_rn = copy(v_guess_rn)
            v_bad_old_rn = copy(v_bad_guess_rn)

            v_guess = damp_v .* v_guess_new .+ (1 - damp_v) .* v_old
            v_bad_guess = damp_v .* v_bad_guess_new .+ (1 - damp_v) .* v_bad_old
            v_guess_rn = damp_v .* v_guess_new_rn .+ (1 - damp_v) .* v_old_rn
            v_bad_guess_rn = damp_v .* v_bad_guess_new_rn .+ (1 - damp_v) .* v_bad_old_rn

            diff_v = maximum(abs.(v_guess_new .- v_old))
            @printf("Inner iteration %d: diff_v = %.4e\n", iter_v, diff_v)
            iter_v += 1
        end  # End inner loop
        
        @printf("After inner loop: diff_v = %.4e, iter_v = %d\n", diff_v, iter_v)
        
        #########################################################################
        # 4B. Outer Loop: Bond Price Update (Replicating MATLAB)
        #########################################################################
        # For pricing, first store copies of default probabilities before merging.
        def_only_pf = copy(def_std)    # standard default probability
        rel_only_pf = copy(def_rel)     # relief default probability
        
        q_g_pf_old = copy(q_g_pf)
        
        q_g_pf = fill(NaN, N_x, N_b_g)
        q_g_rel_pf = fill(NaN, N_x, N_b_g)
        
        for i_x in 1:N_x
            for i_b in 1:N_b_g
                q_g_pf[i_x,i_b] = sum(q_g[i_x, :] .* vec(prob_choice[i_x,i_b,:]))
                q_g_rel_pf[i_x,i_b] = sum(q_g[i_x, :] .* vec(prob_choice_rel[i_x,i_b,:]))
            end
        end

        q_g_pf_zeros = copy(q_g_pf)
        q_g_pf_zeros[isnan.(q_g_pf)] .= 0.0

        # Now compute e_defrel, the default-adjusted repayment expectation:
        e_defrel = P_x * ((1 .- def_only_pf) .* (1 .- rel_only_pf) .* (1 .+ (1 - delta) .* q_g_pf_zeros) .+
                  (1 .- def_only_pf) .* rel_only_pf .* (share .* (1 .+ (1 - delta).*q_g_rel_pf) .+ (1 - share) .* (1 + mu_r) .* q_g_rel_pf))
                  
        q_g_new = repeat(qrf_vec, 1, N_b_g) .* e_defrel
        q_g_new = max.(0, q_g_new)
        for j in 1:size(q_g_new,2)
            if b_g_vec[j] <= 0
                q_g_new[:, j] .= qrf_lt
            end
        end
        
        
        # Store old arrays (for q_g, q_g2, and q_g_rel)
        q_g_old = copy(q_g)
        
        diff_q = maximum(abs.(q_g_new .- q_g_old))
        @printf("Outer iteration %d: diff_q = %.4e\n", iter_q, diff_q)
        
        # Damping updates:
        q_g = damp_q .* q_g_new .+ (1 - damp_q) .* q_g_old
        
        push!(log_diff_q, diff_q)
        iter_q += 1
        diff_v = 7.0
        iter_v = 1
    end  # End outer loop

    #########################################################################
    # 5. Finalize: Copy Results to Global Variables and Return
    #########################################################################
    global v_guess = copy(v_guess)
    global v_bad_guess = copy(v_bad_guess)
    global v_guess_rn = copy(v_guess_rn)
    global v_bad_guess_rn = copy(v_bad_guess_rn)
    global q_g = copy(q_g)
    global def_pf = copy(def_new)
    global prob_choice = copy(prob_choice)
    @printf("Default iteration converged in %d outer iterations.\n", iter_q)

    return (b_g_vec, q_g, q_g_pf, v_guess, v_bad_guess, v_guess_rn, v_bad_guess_rn, def_pf, prob_choice)
end

# ========================================================
# 4. Simulation of the Markov Chain and Moments (Unchanged)
# ========================================================
function simulate_markov_chain(P_x, N_h, N_y, T_sim)
    size_grid = (N_h, N_y)
    row0 = floor(Int, N_h / 2) + 1
    col0 = floor(Int, N_y / 2) + 1
    init_x_sim = row0 + (col0 - 1) * N_h
    T = copy(P_x)
    n = T_sim
    s0 = init_x_sim
    V_vec = collect(1:size(T, 1))
    (r, c) = size(T)
    for k in 1:r
        row_sum = sum(T[k, :])
        if abs(row_sum - 1) > 1e-8
            T[k, :] ./= row_sum
        end
    end
    if s0 < 1 || s0 > r
        s0 = 1
    end
    @printf("T_sim = %d\nInitial state (s0) = %d (row = %d, col = %d)\nSize of T: %d x %d\nLength of V: %d\n",
            T_sim, s0, row0, col0, r, c, length(V_vec))
    X = rand(n - 1)
    s = zeros(Float64, r)
    s[s0] = 1.0
    cum = T * triu(ones(r, r))
    state = zeros(Float64, r, length(X))
    for k in 1:length(X)
        state[:, k] = s
        ppi = vcat(0.0, vec(s' * cum))
        s = Float64.((X[k] .<= ppi[2:end]) .& (X[k] .> ppi[1:end-1]))
    end
    i_x_sim = (V_vec') * state
    i_x_sim = vcat(init_x_sim, vec(i_x_sim))
    return i_x_sim
end

function simulation_loop!(i_x_sim, P_x, def_pf, q_g_pf, q_g, b_g_vec, y_vec_2sh, h_vec_2sh, λ, T_sim, wc_par_asymm, gdp_mean, delta, prob_choice, v_guess, v_bad_guess, v_guess_rn, v_bad_guess_rn)
    N_x = size(P_x, 1)
    N_b_g = length(b_g_vec)
    dist_sim = zeros(Float64, N_x, N_b_g, T_sim + 1)
    mass_acc = zeros(Float64, T_sim)
    access_sim = fill(NaN, T_sim)
    r_g_mean = zeros(Float64, T_sim)
    q_g_mean = zeros(Float64, T_sim)
    b_g_mean = zeros(Float64, T_sim)
    V_g_mean = zeros(Float64, T_sim)
    V_g_mean_rn = zeros(Float64, T_sim)
    def_mean = zeros(Float64, T_sim)

    y_sim = y_vec_2sh[Int.(i_x_sim[1:T_sim])]
    h_sim = h_vec_2sh[Int.(i_x_sim[1:T_sim])]

    i_b_g_zero = argmin(abs.(b_g_vec))
    dist_sim[Int(i_x_sim[1]), i_b_g_zero[2], 1] = 1.0
    mass_acc[1] = 1.0

    for t_sim in 1:(T_sim - 1)
        if mass_acc[t_sim] > 0.99
            mass_acc[t_sim + 1] = sum(dist_sim[:, :, t_sim] .* (1 .- def_pf))
            temp = repeat(dist_sim[:, :, t_sim] .* (1 .- def_pf), 1, 1, N_b_g)
            new_dist = dropdims(sum(sum(temp .* prob_choice, dims = 1), dims = 2), dims = (1, 2))
            dist_sim[Int(i_x_sim[t_sim + 1]), :, t_sim + 1] .= new_dist
            total_mass = sum(dist_sim[:, :, t_sim])
            r_g_mean[t_sim] = sum(((1 .+ 1 ./ q_g_pf .- delta) .^ 1 .- 1) .* dist_sim[:, :, t_sim]) / total_mass
            q_g_mean[t_sim] = sum(q_g_pf .* dist_sim[:, :, t_sim]) / total_mass
            b_mat = repeat(reshape(b_g_vec, 1, length(b_g_vec)), N_x, 1)
            b_g_mean[t_sim] = sum(b_mat .* dist_sim[:, :, t_sim]) / total_mass
            V_g_mean[t_sim] = sum(v_guess .* dist_sim[:, :, t_sim]) / total_mass
            V_g_mean_rn[t_sim] = sum(v_guess_rn .* dist_sim[:, :, t_sim]) / total_mass
            def_mean[t_sim] = sum(def_pf .* dist_sim[:, :, t_sim]) / total_mass
        else
            mass_acc[t_sim + 1] = (rand() < λ) ? 1.0 : 0.0
            dist_sim[Int(i_x_sim[t_sim + 1]), i_b_g_zero[2], t_sim + 1] = 1.0
            r_g_mean[t_sim] = NaN
            q_g_mean[t_sim] = NaN
            b_g_mean[t_sim] = NaN
            V_g_mean[t_sim] = v_bad_guess[Int(i_x_sim[t_sim]), 1]
            V_g_mean_rn[t_sim] = v_bad_guess_rn[Int(i_x_sim[t_sim]), 1]
            def_mean[t_sim] = 1.0
        end
        @printf("t_sim = %d, mass_acc = %.4f, total mass in dist = %.4f\n", t_sim, mass_acc[t_sim], sum(dist_sim[:, :, t_sim]))
        @printf("r_g_mean(%d) = %.4e, q_g_mean(%d) = %.4e, b_g_mean(%d) = %.4e\n", t_sim, r_g_mean[t_sim], t_sim, q_g_mean[t_sim], t_sim, b_g_mean[t_sim])
        @printf("V_g_mean(%d) = %.4e, def_mean(%d) = %.4e\n", t_sim, V_g_mean[t_sim], t_sim, def_mean[t_sim])
    end

    return (dist_sim, mass_acc, r_g_mean, q_g_mean, b_g_mean, V_g_mean, V_g_mean_rn, def_mean, y_sim, h_sim)
end

# ========================================================
# 5. MAIN FUNCTION: Run All Steps for a Single Country
# ========================================================
function main_country_2P_RN(country::String)
    N_y = 7
    N_h = 3
    N_x = N_y * N_h
    N_b_g = 50
    λ = 1 / 3

    int_y = 2.5 * (N_y != 1 ? 1 : 0) + eps() * (N_y == 1)
    int_h = 2 * (N_h != 1 ? 1 : 0) + eps() * (N_h == 1)

    country_params = get_country_params(country)
    sigma_ey      = country_params.sigma_ey
    rho_y         = country_params.rho_y
    beta          = country_params.beta
    wc_par_asymm  = country_params.wc_par_asymm
    delta         = country_params.delta
    sigma_eh      = country_params.sigma_eh
    cc_int        = 1
    mean_h        = country_params.mean_h
    p_hu          = country_params.p_hu

    mu_r = 0.0451
    gamma_c = 2
    def_cost_asymm = 1

    damp_v = 0.8
    damp_q = 0.8
    maxiter_v = 300
    maxiter_q = 600
    tol_v = 1e-3
    tol_q = 1e-6
    ev_rho = 1e-2
    ev_rho_def = 1 / ev_rho
    eulgam = 0.5772

    T_sim = 10000

    ly_vec, P_y, lh_vec, P_h, y_vec, h_vec, gdp_vec, P_x = setup_exogenous_process(N_y, N_h, int_y, int_h, sigma_ey, rho_y, sigma_eh, p_hu, cc_int, mean_h)

    h_vec_2sh = repeat(h_vec, N_y)
    y_vec_2sh = kron(y_vec, ones(N_h))

    r_vec = mu_r
    r_vec_2sh = [r_vec]
    qrf_lt, qrf_vec = compute_quarterly_debt_prices(repeat(r_vec_2sh, N_y * N_h), delta)

    gdp_mean_full = (P_x^100000) * (kron(y_vec, ones(N_h)) .* kron(ones(N_y), h_vec))
    gdp_mean = gdp_mean_full[floor(Int, N_y * N_h / 2) + 1]
    @printf("Julia: gdp_mean = %f\n", gdp_mean)

    util_aut, util_aut_rn = compute_autarky_utility(h_vec_2sh, y_vec_2sh, wc_par_asymm, gdp_mean, gamma_c)

    b_g_vec, q_g, q_g_pf, v_guess, v_bad_guess, v_guess_rn, v_bad_guess_rn, def_pf, prob_choice =
        default_iteration_2P_RN!(
            sigma_ey = sigma_ey, rho_y = rho_y, beta = beta, wc_par_asymm = wc_par_asymm, delta = delta, mu_r = mu_r,
            gamma_c = gamma_c, ev_rho = ev_rho, ev_rho_def = ev_rho_def, eulgam = eulgam,
            N_y = N_y, N_h = N_h, N_x = N_x, N_b_g = N_b_g, qrf_lt = qrf_lt, qrf_vec = qrf_vec, gdp_mean = gdp_mean, P_x = P_x,
            y_vec_2sh = y_vec_2sh, h_vec_2sh = h_vec_2sh, util_aut = util_aut, util_aut_rn = util_aut_rn, λ = λ,
            damp_v = damp_v, damp_q = damp_q, maxiter_v = maxiter_v, maxiter_q = maxiter_q, tol_v = tol_v, tol_q = tol_q
        )

    i_x_sim = simulate_markov_chain(P_x, N_h, N_y, T_sim)
    dist_sim, mass_acc, r_g_mean, q_g_mean, b_g_mean, V_g_mean, V_g_mean_rn, def_mean, y_sim, h_sim =
        simulation_loop!(i_x_sim, P_x, def_pf, q_g_pf, q_g, b_g_vec, y_vec_2sh, h_vec_2sh, λ, T_sim, wc_par_asymm, gdp_mean, delta, prob_choice, v_guess, v_bad_guess, v_guess_rn, v_bad_guess_rn)

    B_g_sim = (1 ./(y_sim .* h_sim)) .* (b_g_mean ./ (delta + mu_r))
    B_g_sim_market = (1 ./(y_sim .* h_sim)) .* (b_g_mean ./ (delta .+ r_g_mean))
    spread_sim = 10000 * (((1 .+ r_g_mean) ./ (1 .+ r_vec)) .- 1)
    b_g_sim1 = [b_g_mean[1:end-1]; NaN]
    b_g_sim_curr = [NaN; b_g_mean[2:end]]
    nx_sim = -q_g_mean .* (b_g_sim_curr .- (1 - delta) .* b_g_sim1) .+ b_g_sim1
    nx_sim = replace(nx_sim, NaN => 0.0)
    c_sim1 = y_sim .* h_sim .- nx_sim
    c_sim = ifelse.(isnan.(c_sim1), wc_par_asymm * gdp_mean, c_sim1)
    cons_sim = c_sim

    meanBY_sim = mean(skipmissing(B_g_sim[spread_sim .< 1e4]))
    meanBY_sim_market = mean(skipmissing(q_g_mean[spread_sim .< 1e4] .* b_g_mean[spread_sim .< 1e4]))
    meanspread_sim = mean(skipmissing(spread_sim[spread_sim .< 1e4]))
    medianspread_sim = median(skipmissing(spread_sim[spread_sim .< 1e4]))
    meanspread_hurr_sim = mean(skipmissing(spread_sim[(spread_sim .< 1e4) .& (h_sim .< 1)]))
    medianspread_hurr_sim = median(skipmissing(spread_sim[(spread_sim .< 1e4) .& (h_sim .< 1)]))
    stdspread_sim = std(skipmissing(spread_sim[spread_sim .< 1e4]))
    hur_freq_sim = sum(h_sim[h_sim .< 1]) / length(h_sim)
    b_g_sim2 = [110; b_g_mean[1:end-1]]
    def_sim = copy(def_mean)
    for i in eachindex(def_sim)
        if isnan(b_g_mean[i]) && isnan(b_g_sim2[i])
            def_sim[i] = 0
        end
    end
    def_freq_sim = mean(skipmissing(def_sim))

    gdp_sim = y_sim .* h_sim
    gdp_sim[isnan.(c_sim1)] .= gdp_mean
    gdp_g = (gdp_sim[2:end] .- gdp_sim[1:end-1]) ./ gdp_sim[1:end-1]
    gdp_g_h_sim = mean(skipmissing(gdp_g[h_sim[2:end] .< 1]))
    spread_g = (spread_sim[2:end] .- spread_sim[1:end-1]) ./ spread_sim[1:end-1]
    spread_g_h_sim = median(skipmissing(spread_g[h_sim[2:end] .< 1]))
    gdp_mean_store = gdp_mean

    @printf("=== Computed Moments (Panel B) ===\n")
    @printf("Mean Debt/GDP (B_g_sim): %f\n", mean(skipmissing(B_g_sim[spread_sim .< 1e4])))
    @printf("Market Value of Debt: %f\n", mean(skipmissing(q_g_mean[spread_sim .< 1e4] .* b_g_mean[spread_sim .< 1e4])))
    @printf("Average Spread: %f\n", mean(skipmissing(spread_sim[spread_sim .< 1e4])))
    @printf("Median Spread: %f\n", median(skipmissing(spread_sim[spread_sim .< 1e4])))
    @printf("Hurricane Frequency: %f\n", sum(h_sim .< 1) / length(h_sim))
    @printf("Default Frequency: %f\n", mean(skipmissing(def_sim)))
    @printf("Default Hurricane Frequency: %f\n", mean(skipmissing(def_sim[h_sim .< 1])))
    @printf("GDP Growth in Hurricane Year: %f\n", gdp_g_h_sim)
    @printf("Spread Increase in Hurricane Year: %f\n", spread_g_h_sim)
    @printf("GDP Mean Store: %f\n", gdp_mean_store)

    @save "output/table2_panelB.jld2" meanBY_sim meanBY_sim_market meanspread_sim medianspread_sim stdspread_sim meanspread_hurr_sim medianspread_hurr_sim gdp_g_h_sim spread_g_h_sim b_g_mean i_x_sim cons_sim spread_sim def_freq_sim hur_freq_sim gdp_mean_store V_g_mean V_g_mean_rn
    @save "output/gdp_mean_storemat.jld2" gdp_mean_store

    return (
        country = country,
        meanDebtGDP = meanBY_sim,
        marketValueDebt = meanBY_sim_market,
        avgSpread = meanspread_sim,
        medSpread = medianspread_sim,
        hurFrequency = hur_freq_sim,
        defFrequency = def_freq_sim,
        gdpGrowthHurYear = gdp_g_h_sim,
        b_g_vec = b_g_vec,
        q_g = q_g,
        gdp_vec = vec(gdp_vec),
        V_g_mean = V_g_mean,
        gamma_c = gamma_c 
    )
end

# ========================================================
# 6. Bond Price Schedule Graph
# ========================================================

function plot_bond_price_schedule_with_gdp(
    b_g_vec,    # Debt grid
    q_g,        # Bond price grid
    gdp_vec,    # Sorted combined GDP states
    gdp_mean,
    # Instead of thresholds, pick explicit indices
    i_low::Int = 1,
    i_high::Int = -1)
    # If i_high = -1, that means pick the last element
    if i_high < 0
        i_high = length(gdp_vec)
    end

    # Extract bond prices
    bond_prices_low  = vec(q_g[i_low, :])
    bond_prices_high = vec(q_g[i_high, :])

    b_grid = vec(b_g_vec)

    plt = plot(b_grid, bond_prices_low,
               label = "Low GDP = $(round(gdp_vec[i_low], digits=3))",
               lw = 2, xlabel = "Next–Period Debt (B')", ylabel = "Bond Price (q)",
               title = "Bond Price Schedule for Distinct GDP States")
    plot!(plt, b_grid, bond_prices_high,
          label = "High GDP = $(round(gdp_vec[i_high], digits=3))",
          lw = 2)

    return plt
end

# =============================================================================================
# 7. Running the model, outputting the price schedule graph, and saving simulation results
# =============================================================================================

# Running the model and its simulation
@time begin
    result_2P_RN = main_country_2P_RN("Jamaica")
end

# Call the plotting function using the outputs from main_country:
plt = plot_bond_price_schedule_with_gdp(result_2P_RN.b_g_vec, result_2P_RN.q_g, result_2P_RN.gdp_vec, result_2P_RN.meanDebtGDP)
display(plt)

# Saving model simulations results
V_g_2P_RN = result_2P_RN.V_g_mean
gamma_c = result_2P_RN.gamma_c

@save "output/Vg_sim_2P_RN.jld2" V_g_2P_RN gamma_c