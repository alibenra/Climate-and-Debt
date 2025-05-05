cd(normpath(joinpath(@__DIR__, "..")))

# --------------------------------------------------------
# SECTION 1: Baseline Parameters
# --------------------------------------------------------

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

# --------------------------------------------------------
# SECTION 2: Intensified Climate Impact
# --------------------------------------------------------

# --- Step 1: Run Each Model Once ---
include("Benchmark_RN_Climate.jl")
include("Benchmark_RA_Climate.jl")
include("1P_PC_RN_Climate.jl")
include("1P_PC_RA_Climate.jl")
include("2P_PC_RN_Climate.jl")
include("2P_PC_RA_Climate.jl")
include("CAT_RN_Climate.jl")
include("CAT_RA_Climate.jl")

# --- Step 2: Generate Welfare Gain Summary ---
include("welfare_gains_Climate.jl")

# --- Step 3: Generate Typst Simulation Tables ---
include("generate_sim_summary_Climate.jl")

# --------------------------------------------------------
# SECTION 3: Varying CAT Bond Sizes
# --------------------------------------------------------

# --- Step 1: Run Each Model Once ---
include("Benchmark_RN.jl")
include("Benchmark_RA.jl")
include("CAT_RN.jl")
include("CAT_RA.jl")
include("CAT_RN_Share1.jl")
include("CAT_RN_Share100.jl")
include("CAT_RA_Share1.jl")
include("CAT_RA_Share100.jl")

# --- Step 2: Generate Welfare Gain Summary ---
include("welfare_gains_Share.jl")

# --- Step 3: Generate Typst Simulation Tables ---
include("generate_sim_summary_Share.jl")


