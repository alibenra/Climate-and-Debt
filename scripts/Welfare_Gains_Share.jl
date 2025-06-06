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

# Collect CEQ welfare results
welfare_results = [
    compute_ceq_gain("output/Vg_sim_bench_RN.jld2", :V_g_bench_RN,
                     "output/Vg_sim_CAT_RN.jld2",    :V_g_CAT_RN;    label="CAT RN 55%"),

    compute_ceq_gain("output/Vg_sim_bench_RN.jld2", :V_g_bench_RN,
                     "output/Vg_sim_CAT_RN_share1.jld2",    :V_g_CAT_RN_share1;    label="CAT RN 1.55%"),

    compute_ceq_gain("output/Vg_sim_bench_RN.jld2", :V_g_bench_RN,
                     "output/Vg_sim_CAT_RN_share100.jld2",   :V_g_CAT_RN_share100;   label="CAT RN 100%")
]

df_welfare = DataFrame(welfare_results)

println("\nSummary of Welfare Gains (% vs. benchmark):")
display(df_welfare)

# --- Write Typst Table ---
# --- Write Stylized Typst Table ---
open("output/welfare_gains_CAT_Share.typ", "w") do io
    println(io, "#show figure: set block(breakable: true)\n")

    println(io, "#figure(")
    println(io, "  kind: \"table\",")
    println(io, "  supplement: \"Table\",")

    println(io, "block[")
    println(io, "  #table(")
    println(io, "    columns: (auto, auto),")
    println(io, "    align: (x, y) => if x == 0 { left } else { center },")
    println(io, "    stroke: none,")
    println(io, "    inset: 6pt,")

    println(io, "    table.hline(y: 0, start: 0, end: 2, stroke: 0.8pt),")
    println(io, "    table.hline(y: 1, start: 0, end: 2, stroke: 0.8pt),")
    println(io, "    table.hline(y: $(nrow(df_welfare) + 1), start: 0, end: 2, stroke: 0.8pt),\n")

    println(io, "    table.header(")
    println(io, "      [*Model*], [*Welfare Gain (%)*]")
    println(io, "    ),")

    for row in eachrow(df_welfare)
        @printf(io, "    [*%s*], [%.3f],\n", row.Model, row.WelfareGain)
    end

    println(io, "\n    table.footer(")
    println(io, "      table.cell(")
    println(io, "        colspan: 2,")
    println(io, "        align: left,")
    println(io, "        inset: 4pt,")
    println(io, "        emph(\"Consumption-equivalent welfare gains relative to the benchmark.\")")
    println(io, "      )")
    println(io, "    )")

    println(io, "  )\n]")
    println(io, ")")
end

