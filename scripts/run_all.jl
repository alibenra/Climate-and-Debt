cd(normpath(joinpath(@__DIR__, "..")))

using DataStructures

include("plot_bond_schedule.jl")

# --------------------------------------------------------
# SECTION 1: Baseline Parameters
# --------------------------------------------------------

# --- Step 1: Run Each Model Once ---
include("Benchmark_RN.jl")
include("1P_PC_RN.jl")
include("2P_PC_RN.jl")
include("CAT_RN.jl")
include("CAT_RN_Share1.jl")
include("CAT_RN_Share100.jl")

# --- Step 2: Generate Welfare Gain Summary ---
include("Welfare_gains.jl")

# --- Step 3: Generate Typst Simulation Tables ---
include("generate_sim_summary.jl")

# --- Step 4: Individual Bond Price Schedule Graphs ---
plot_and_save_bond_schedule(result_bench_RN; filename="BondSchedule_Benchmark_RN")
plot_and_save_bond_schedule(result_1P_RN; filename="BondSchedule_1P_PC_RN")
plot_and_save_bond_schedule(result_2P_RN; filename="BondSchedule_2P_PC_RN")
plot_and_save_bond_schedule(result_CAT_RN; filename="BondSchedule_CAT_RN")
plot_and_save_value_function(result_bench_RN; filename="ValueFunction_Benchmark_RN")




# --- Step 5: Bond Price Schedule Comparison - RN ---
instruments_RN = OrderedDict(
    "Benchmark" => result_bench_RN,
    "1-Period PC" => result_1P_RN,
    "2-Period PC" => result_2P_RN,
    "CAT Bond 55%" => result_CAT_RN
)

comp_bond_schedule(instruments_RN; filename="BS_Comparison_RN")

# --- Step 6: Bond Price Schedule Comparison - Varying CAT coverage ---
CAT_share_RN = OrderedDict(
    "Benchmark" => result_bench_RN,
    "CAT Bond 55%" => result_CAT_RN,
    "CAT Bond 1.55%" => result_CAT_RN_share1,
    "CAT Bond 100%" => result_CAT_RN_share100
)

comp_bond_schedule(CAT_share_RN; filename="BS_CAT_share_RN")

# --- Step 7: Welfare Gains Plot ---
plot_cat_welfare(df_welfare; filename = "Welfare_vs_CAT_Share")

# --------------------------------------------------------
# SECTION 2: Intensified Climate Impact
# --------------------------------------------------------

# --- Step 1: Run Each Model Once ---
include("Benchmark_RN_Climate.jl")
include("1P_PC_RN_Climate.jl")
include("2P_PC_RN_Climate.jl")
include("CAT_RN_Climate.jl")
include("CAT_RN_Share1_Climate.jl")
include("CAT_RN_Share100_Climate.jl")

# --- Step 2: Generate Welfare Gain Summary ---
include("Welfare_Gains_Climate.jl")

# --- Step 3: Generate Typst Simulation Tables ---
include("generate_sim_summary_Climate.jl")

# --- Step 4: Individual Bond Price Schedule Graphs ---
plot_and_save_bond_schedule(result_bench_RN_climate; filename="BondSchedule_Benchmark_RN_Climate")
plot_and_save_bond_schedule(result_1P_RN_climate; filename="BondSchedule_1P_PC_RN_Climate")
plot_and_save_bond_schedule(result_2P_RN_climate; filename="BondSchedule_2P_PC_RN_Climate")
plot_and_save_bond_schedule(result_CAT_RN_climate; filename="BondSchedule_CAT_RN_Climate")

# --- Step 5: Bond Price Schedule Comparison - RN ---
instruments_RN_climate = OrderedDict(
    "Benchmark Climate" => result_bench_RN_climate,
    "1-Period PC Climate" => result_1P_RN_climate,
    "2-Period PC Climate" => result_2P_RN_climate,
    "CAT Bond 55% Climate" => result_CAT_RN_climate
)

comp_bond_schedule(instruments_RN_climate; filename="BS_Comparison_RN_Climate")

# --- Step 6: Bond Price Schedule Comparison - Varying CAT coverage ---
CAT_share_RN_climate = OrderedDict(
    "Benchmark Climate" => result_bench_RN_climate,
    "CAT Bond 55% Climate" => result_CAT_RN_climate,
    "CAT Bond 1.55% Climate" => result_CAT_RN_share1_climate,
    "CAT Bond 100% Climate" => result_CAT_RN_share100_climate
)

comp_bond_schedule(CAT_share_RN_climate; filename="BS_CAT_share_RN_Climate")

# --- Step 7: Welfare Gains Plot ---
plot_cat_welfare(df_welfare_climate; filename = "Welfare_vs_CAT_Share_Climate")

# --------------------------------------------------------
# SECTION 3: Varying CAT Bond Sizes
# --------------------------------------------------------

# --- Step 1: Run Each Model Once ---
#include("CAT_RN_Share1.jl")
#include("CAT_RN_Share100.jl")

# --- Step 2: Generate Welfare Gain Summary ---
include("welfare_gains_Share.jl")

# --- Step 3: Generate Typst Simulation Tables ---
include("generate_sim_summary_Share.jl")

# --- Step 4: Individual Bond Price Schedule Graphs ---
#plot_and_save_bond_schedule(result_CAT_RN_share1; filename="BondSchedule_CAT_RN_Share1")
#plot_and_save_bond_schedule(result_CAT_RN_share100; filename="BondSchedule_CAT_RN_Share100")

# --- Step 5: Bond Price Schedule Comparison - RN ---
#CAT_share_RN = Dict(
#    "Benchmark RN" => result_bench_RN,
#    "CAT Bond RN 55%" => result_CAT_RN,
#    "CAT Bond RN 1.55%" => result_CAT_RN_share1,
#    "CAT Bond RN 100%" => result_CAT_RN_share100)

#comp_bond_schedule(CAT_share_RN; filename="BS_CAT_share_RN")

# --- Step 7: Welfare Gains Plot ---
#plot_cat_welfare(df_welfare; filename = "Welfare_vs_CAT_Share")
