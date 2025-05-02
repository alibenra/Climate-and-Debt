cd(normpath(joinpath(@__DIR__, "..")))

using JLD2, Printf, Statistics, DataFrames

function compute_ceq_gain(benchmark_path::String, bench_var::Symbol,
        alt_path::String, alt_var::Symbol;
        label::String="")
    bench = load(benchmark_path)
    alt   = load(alt_path)

    Vb = mean(skipmissing(bench[string(bench_var)]))
    Va = mean(skipmissing(alt[string(alt_var)]))
    γ  = bench["gamma_c"]

    gain = (Va / Vb)^(1 / (1 - γ)) - 1
    @printf("%-10s Welfare Gain: %+6.3f%%\n", label, 100 * gain)
    return (Model=label, WelfareGain=100 * gain)
end


# Collect results
welfare_results = [
    compute_ceq_gain("output/Vg_sim_bench_RN.jld2", :V_g_bench_RN,
                     "output/Vg_sim_1P_RN.jld2",    :V_g_1P_RN;    label="1P_RN"),

    compute_ceq_gain("output/Vg_sim_bench_RN.jld2", :V_g_bench_RN,
                     "output/Vg_sim_2P_RN.jld2",    :V_g_2P_RN;    label="2P_RN"),

    compute_ceq_gain("output/Vg_sim_bench_RN.jld2", :V_g_bench_RN,
                     "output/Vg_sim_CAT_RN.jld2",   :V_g_CAT_RN;   label="CAT_RN"),

    compute_ceq_gain("output/Vg_sim_bench_RA.jld2", :V_g_bench_RA,
                     "output/Vg_sim_1P_RA.jld2",    :V_g_1P_RA;    label="1P_RA"),

    compute_ceq_gain("output/Vg_sim_bench_RA.jld2", :V_g_bench_RA,
                     "output/Vg_sim_2P_RA.jld2",    :V_g_2P_RA;    label="2P_RA"),

    compute_ceq_gain("output/Vg_sim_bench_RA.jld2", :V_g_bench_RA,
                     "output/Vg_sim_CAT_RA.jld2",   :V_g_CAT_RA;   label="CAT_RA")
]


df_welfare = DataFrame(welfare_results)
println("\nSummary of Welfare Gains (% vs. benchmark):")
display(df_welfare)
