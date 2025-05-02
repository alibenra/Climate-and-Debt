cd(normpath(joinpath(@__DIR__, "..")))

using JLD2, DataFrames, Printf, Random

Random.seed!(19)

include("Benchmark_RN.jl")  # This defines `main_country_RN`
include("Benchmark_RA.jl")  # This defines `main_country_RA`

# ================================
# Calibrating RN
# ================================
function calibrate_model_RN(target_spread::Float64, target_debt_gdp::Float64;
    beta_range=0.80:0.01:0.96, wc_range=0.68:0.01:0.80,
    country="Jamaica")

    results = []

    for β in beta_range, wc in wc_range
        global global_beta = β
        global global_wc = wc
        @printf("Trying RN β = %.3f, wc = %.3f\n", β, wc)
        res = try
            output = main_country_RN(country)
            spread = output.avgSpread
            debt = output.meanDebtGDP
            loss = (spread - target_spread)^2 + 100 * (debt - target_debt_gdp)^2
            (β, wc, spread, debt, loss)
        catch e
            @warn "Failed at β=$β wc=$wc"
            (β, wc, NaN, NaN, Inf)
        end
        push!(results, res)
    end

    df = DataFrame(results, [:beta, :wc_par_asymm, :avgSpread, :DebtGDP, :loss])
    sorted_df = sort(df, :loss)
    @save "output/calibration_RN.jld2" df
    println("Top RN Calibration Results:")
    println(first(sorted_df, 10))
    return sorted_df
end

# ================================
# Calibrating RA
# ================================
function calibrate_model_RA(target_spread::Float64, target_debt_gdp::Float64;
    beta_range=0.80:0.01:0.96, wc_range=0.68:0.01:0.80,
    country="Jamaica")

    results = []

    for β in beta_range, wc in wc_range
        global global_beta = β
        global global_wc = wc
        @printf("Trying RA β = %.3f, wc = %.3f\n", β, wc)
        res = try
            output = main_country_RA(country)
            spread = output.avgSpread
            debt = output.meanDebtGDP
            loss = (spread - target_spread)^2 + 100 * (debt - target_debt_gdp)^2
            (β, wc, spread, debt, loss)
        catch e
            @warn "Failed at β=$β wc=$wc"
            (β, wc, NaN, NaN, Inf)
        end
        push!(results, res)
    end

    df = DataFrame(results, [:beta, :wc_par_asymm, :avgSpread, :DebtGDP, :loss])
    sorted_df = sort(df, :loss)
    println("Top RA Calibration Results:")
    println(first(sorted_df, 10))
    return sorted_df
end

# Run and save both calibrations (optionally comment out as needed)
best_calib_RN = calibrate_model_RN(550.0, 0.49)
best_calib_RA = calibrate_model_RA(550.0, 0.49)

# ================================
# Computing the CAT Bond Premium
# ================================

function compute_cat_premium(country::String="Jamaica", r::Float64=0.0451, b_g_vec=nothing)
    # Step 0: Load hurricane probability and debt grid
    p_hu = get_country_params(country).p_hu
    if isnothing(b_g_vec)
        b_g_vec = result_bench_RN.b_g_vec  # assumes result_RN is in scope
    end

    # Step 1: Survival probability each period
    E_surv = fill(1 - p_hu, length(b_g_vec))

    # Step 2: Price & premium
    disc = 1.0 + r
    sqrt_term = sqrt.((r .* E_surv).^2 .+ 4 .* disc .* E_surv)
    q_cat_by_b = (-r .* E_surv .+ sqrt_term) ./ (2 .* disc)
    Π_cat_by_b = 1.0 ./ q_cat_by_b .- 1.0 .- r

    # Step 3: Display
    println("Pure CAT-bond premium (%) by debt level:")
    for (j, B) in enumerate(vec(b_g_vec))
        @printf("  B = %6.3f → Π_cat = %5.2f%%\n", B, 100 * Π_cat_by_b[j])
    end

    return Π_cat_by_b
end

cat_premia = compute_cat_premium("Jamaica")
