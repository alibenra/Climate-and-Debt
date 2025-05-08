# plot_bond_schedule.jl
cd(normpath(joinpath(@__DIR__, "..")))

using Plots, Measures, DataFrames

function plot_and_save_bond_schedule(result; filename::String, i_low::Int = 1, i_high::Int = -1)
    b_g_vec = result.b_g_vec
    q_g = result.q_g
    gdp_vec = result.gdp_vec
    gdp_mean = result.meanDebtGDP

    if i_high < 0
        i_high = length(gdp_vec)
    end

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

    savefig(plt, "graphs/$(filename).png")
end


function comp_bond_schedule(results::Dict{String, <:Any}; filename::String, i_low::Int = 1, i_high::Int = -1)
    if isempty(results)
        error("No results provided for comparison.")
    end

    # Assume the first result has the correct gdp_vec length for bounds
    sample_result = first(values(results))
    if i_high < 0
        i_high = length(sample_result.gdp_vec)
    end

    # Ensure labels and axes are not cropped in saved output
    plt = plot(
        layout = grid(1, 2),
        size = (1200, 500),
        dpi = 300,
        left_margin = 12mm,
        right_margin = 12mm,
        top_margin = 10mm,
        bottom_margin = 12mm,
        guidefontsize = 11,
        tickfontsize = 9,
        legendfontsize = 10,
    )

    for (label, result) in results
        b_grid = vec(result.b_g_vec)
        bond_prices_low  = vec(result.q_g[i_low, :])
        bond_prices_high = vec(result.q_g[i_high, :])

        plot!(plt[1], b_grid, bond_prices_low, label = "$label (Low y)", lw = 2)
        plot!(plt[2], b_grid, bond_prices_high, label = "$label (High y)", lw = 2, ls = :dash)
    end

    plot!(plt[1], xlabel = "Next–Period Debt (B')", ylabel = "Bond Price (q)", title = "Bond Price Schedule at Low Income", framestyle = :box)
    plot!(plt[2], xlabel = "Next–Period Debt (B')", ylabel = "Bond Price (q)", title = "Bond Price Schedule at High Income", framestyle = :box)

    plot!(plt[1], ylims = (0, 10))
    plot!(plt[2], ylims = (0, 10))
    savefig(plt, "graphs/$(filename).png")
end


using Plots

function plot_cat_welfare(df::DataFrame; filename::String = "Welfare_vs_CAT")
    for mode in ("RN", "RA")
        coverage = Float64[]
        gains = Float64[]

        for row in eachrow(df)
            parts = split(row.Model)
            if length(parts) == 3 && parts[1] == "CAT" && parts[2] == mode
                push!(coverage, parse(Float64, replace(parts[3], "%" => "")))
                push!(gains, row.WelfareGain)
            end
        end

        if isempty(gains)
            @warn "No matches found for CAT $mode — skipping plot."
            continue
        end

        # Sort by CAT coverage level
        idx = sortperm(coverage)
        x = coverage[idx]
        y = gains[idx]
        y_min, y_max = minimum(y), maximum(y)
        margin = 0.05 * (y_max - y_min)

        plt = plot(x, y,
            seriestype = :scatter,
            xlabel = "CAT Bond Coverage (%)",
            ylabel = "Welfare Gain (%)",
            title = "Welfare Gains vs CAT Coverage – $mode",
            markershape = :circle,
            markercolor = :blue,
            legend = false,
            dpi = 300,
            size = (600, 400),
            ylims = (y_min - margin, y_max + margin)
        )
        plot!(x, y, lw = 1, line = :solid)
        hline!([0], linestyle = :dot, color = :gray)

        savefig(plt, "graphs/$(filename)_$mode.png")
    end
end


