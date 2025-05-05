cd(normpath(joinpath(@__DIR__, "..")))

using JLD2, Printf

function collect_model_moments(file_path::String)
    data = load(file_path)
    return (
        spread = data["meanspread_sim"],
        debtgdp = data["meanBY_sim"],
        def = data["def_freq_sim"],
        hur = data["hur_freq_sim"],
        gdploss = data["gdp_g_h_sim"],
        meangdp = data["gdp_mean_store"]
    )
end

function export_group_table(models::Vector{Tuple{String,String}}, output_path::String, note::String)
    open(output_path, "w") do io
        println(io, "#show figure: set block(breakable: true)\n")
        println(io, "#figure(")
        println(io, "  kind: \"table\",")
        println(io, "  supplement: \"Table\",\n")
        println(io, "block[")
        println(io, "  #table(")
        println(io, "    columns: (auto, auto, auto, auto, auto, auto, auto),")
        println(io, "    align: center,")
        println(io, "    stroke: none,")
        println(io, "    inset: 6pt,\n")

        nrows = length(models) + 1
        println(io, "    table.hline(y: 0, start: 0, end: 7, stroke: 0.8pt),")
        println(io, "    table.hline(y: 1, start: 0, end: 7, stroke: 0.8pt),")
        println(io, "    table.hline(y: $(nrows + 1), start: 0, end: 7, stroke: 0.8pt),\n")

        println(io, "    table.header(")
        println(io, "      [*Model*], [*Spread*], [*Debt/GDP*], [*Default*], [*Hurricane*], [*GDP Loss*], [*Mean GDP*]")
        println(io, "    ),")

        for (label, file) in models
            m = collect_model_moments(file)
            @printf(io, "    [*%s*], [%.1f], [%.2f], [%.3f], [%.3f], [%.3f], [%.3f],\n",
                    label, m.spread, m.debtgdp, m.def, m.hur, m.gdploss, m.meangdp)
        end

        println(io, "\n    table.footer(")
        println(io, "      table.cell(")
        println(io, "        colspan: 7,")
        println(io, "        align: left,")
        println(io, "        inset: 4pt,")
        println(io, "        emph(\"$note\")")
        println(io, "      )")
        println(io, "    )")

        println(io, "  )\n]")
        println(io, ")")
    end
end

# === RN and RA Model Lists ===
rn_models = [
    ("Benchmark", "output/sim_bench_RN.jld2"),
    ("CAT 55%",     "output/sim_CAT_RN.jld2"),
    ("CAT 1.55%",     "output/sim_CAT_RN_share1.jld2"),
    ("CAT 100%",    "output/sim_CAT_RN_share100.jld2")
]

ra_models = [
    ("Benchmark", "output/sim_bench_RA.jld2"),
    ("CAT 55%",     "output/sim_CAT_RA.jld2"),
    ("CAT 1.55%",     "output/sim_CAT_RA_share1.jld2"),
    ("CAT 100%",    "output/sim_CAT_RA_share100.jld2")
]

# === Write Output Files ===
export_group_table(rn_models, "output/group_sim_RN_CAT_Share.typ",
    "Simulated moments from risk-neutral model set. GDP loss conditional on hurricane occurrence.")

export_group_table(ra_models, "output/group_sim_RA_CAT_Share.typ",
    "Simulated moments from risk-averse model set. GDP loss conditional on hurricane occurrence.")
