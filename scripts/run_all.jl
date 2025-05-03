cd(normpath(joinpath(@__DIR__, "..")))

# --- Step 1: Run Each Model Once ---
include("Benchmark_RN.jl")
include("Benchmark_RA.jl")
include("1P_PC_RN.jl")
include("1P_PC_RA.jl")
include("2P_PC_RN.jl")
include("2P_PC_RA.jl")
include("CAT_RN.jl")
include("CAT_RA.jl")

# --- Step 2: Generate Welfare Gain Summary ---
include("Welfare_gains.jl")

# --- Step 3: Generate Typst Simulation Tables ---
include("generate_sim_summary.jl")
