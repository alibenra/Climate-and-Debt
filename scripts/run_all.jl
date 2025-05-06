cd(normpath(joinpath(@__DIR__, "..")))

include("plot_bond_schedule.jl")

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

# --- Step 4: Individual Bond Price Schedule Graphs ---
plot_and_save_bond_schedule(result_bench_RN; filename="BondSchedule_Benchmark_RN")
plot_and_save_bond_schedule(result_bench_RA; filename="BondSchedule_Benchmark_RA")
plot_and_save_bond_schedule(result_1P_RN; filename="BondSchedule_1P_PC_RN")
plot_and_save_bond_schedule(result_1P_RA; filename="BondSchedule_1P_PC_RA")
plot_and_save_bond_schedule(result_2P_RN; filename="BondSchedule_2P_PC_RN")
plot_and_save_bond_schedule(result_2P_RA; filename="BondSchedule_2P_PC_RA")
plot_and_save_bond_schedule(result_CAT_RN; filename="BondSchedule_CAT_RN")
plot_and_save_bond_schedule(result_CAT_RA; filename="BondSchedule_CAT_RA")

# --- Step 5: Bond Price Schedule Comparison - RN ---
instruments_RN = Dict(
    "Benchmark RN" => result_bench_RN,
    "1-Period PC RN" => result_1P_RN,
    "2-Period PC RN" => result_2P_RN,
    "CAT Bond RN" => result_CAT_RN
)

comp_bond_schedule(instruments_RN; filename="BS_Comparison_RN")

# --- Step 6: Bond Price Schedule Comparison - RA ---
instruments_RA = Dict(
    "Benchmark RA" => result_bench_RA,
    "1-Period PC RA" => result_1P_RA,
    "2-Period PC RA" => result_2P_RA,
    "CAT Bond RA" => result_CAT_RA
)

comp_bond_schedule(instruments_RA; filename="BS_Comparison_RA")
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

# --- Step 4: Individual Bond Price Schedule Graphs ---
plot_and_save_bond_schedule(result_bench_RN_climate; filename="BondSchedule_Benchmark_RN_Climate")
plot_and_save_bond_schedule(result_bench_RA_climate; filename="BondSchedule_Benchmark_RA_Climate")
plot_and_save_bond_schedule(result_1P_RN_climate; filename="BondSchedule_1P_PC_RN_Climate")
plot_and_save_bond_schedule(result_1P_RA_climate; filename="BondSchedule_1P_PC_RA_Climate")
plot_and_save_bond_schedule(result_2P_RN_climate; filename="BondSchedule_2P_PC_RN_Climate")
plot_and_save_bond_schedule(result_2P_RA_climate; filename="BondSchedule_2P_PC_RA_Climate")
plot_and_save_bond_schedule(result_CAT_RN_climate; filename="BondSchedule_CAT_RN_Climate")
plot_and_save_bond_schedule(result_CAT_RA_climate; filename="BondSchedule_CAT_RA_Climate")

# --- Step 5: Bond Price Schedule Comparison - RN ---
instruments_RN_climate = Dict(
    "Benchmark RN Climate" => result_bench_RN_climate,
    "1-Period PC RN Climate" => result_1P_RN_climate,
    "2-Period PC RN Climate" => result_2P_RN_climate,
    "CAT Bond RN Climate" => result_CAT_RN_climate
)

comp_bond_schedule(instruments_RN_climate; filename="BS_Comparison_RN_Climate")

# --- Step 6: Bond Price Schedule Comparison - RA ---
instruments_RA_climate = Dict(
    "Benchmark RA Climate" => result_bench_RA_climate,
    "1-Period PC RA Climate" => result_1P_RA_climate,
    "2-Period PC RA Climate" => result_2P_RA_climate,
    "CAT Bond RA Climate" => result_CAT_RA_climate
)

comp_bond_schedule(instruments_RA_climate; filename="BS_Comparison_RA_Climate")
# --------------------------------------------------------
# SECTION 3: Varying CAT Bond Sizes
# --------------------------------------------------------

# --- Step 1: Run Each Model Once ---
include("CAT_RN_Share1.jl")
include("CAT_RN_Share100.jl")
include("CAT_RA_Share1.jl")
include("CAT_RA_Share100.jl")

# --- Step 2: Generate Welfare Gain Summary ---
include("welfare_gains_Share.jl")

# --- Step 3: Generate Typst Simulation Tables ---
include("generate_sim_summary_Share.jl")

# --- Step 4: Individual Bond Price Schedule Graphs ---
plot_and_save_bond_schedule(result_CAT_RN_share1; filename="BondSchedule_CAT_RN_Share1")
plot_and_save_bond_schedule(result_CAT_RA_share1; filename="BondSchedule_CAT_RA_Share1")
plot_and_save_bond_schedule(result_CAT_RN_share100; filename="BondSchedule_CAT_RN_Share100")
plot_and_save_bond_schedule(result_CAT_RA_share100; filename="BondSchedule_CAT_RA_Share100")

# --- Step 5: Bond Price Schedule Comparison - RN ---
CAT_share_RN = Dict(
    "Benchmark RN" => result_bench_RN,
    "CAT Bond RN 55%" => result_CAT_RN,
    "CAT Bond RN 1.55%" => result_CAT_RN_share1,
    "CAT Bond RN 100%" => result_CAT_RN_share100
)

comp_bond_schedule(CAT_share_RN; filename="BS_CAT_share_RN")

# --- Step 6: Bond Price Schedule Comparison - RA ---
CAT_share_RA = Dict(
    "Benchmark RA" => result_bench_RA,
    "CAT Bond RA 55%" => result_CAT_RA,
    "CAT Bond RA 1.55%" => result_CAT_RA_share1,
    "CAT Bond RA 100%" => result_CAT_RA_share100
)

comp_bond_schedule(CAT_share_RA; filename="BS_CAT_share_RA")

# --- Step 7: Welfare Gains Plot ---
plot_cat_welfare(df_welfare; filename = "Welfare_vs_CAT_Share")
