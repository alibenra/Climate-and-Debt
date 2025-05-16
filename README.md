# Climate Resilience in Sovereign Debt: Simulation Package

**Author**: Ali Benramdane \
**Project**: Master's Thesis, Sciences Po, 2025  \
**Supervisor**: Stéphane Guibaud

## Overview

This repository contains the full Julia-based simulation framework for the Master's thesis *"Bringing Climate Resilience into Sovereign Debt"*. 

All simulations and outputs (Typst format) are reproducible through the Julia scripts provided in this repository.

---

## Folder Structure

- `scripts/`: Contains all Julia scripts for individual model configurations and results generation.
- `output/`: Stores all simulation outputs (tables in `.typ` and intermediary value outputs in `.jld2`).
- `graphs/`: Stores all generated figures in `.png`
- `writing/`: Contains Typst source files for the thesis manuscript and the generated `.pdf` version.

---

## Instructions for Replication

### Prerequisites

- Julia v1.11.2
- List of relevant packages: 
  - `DataStructures`, 
  - `Plots`, 
  - `DataStructures`,
  - `LinearAlgebra`, 
  - `Statistics`, 
  - `Printf`, 
  - `SpecialFunctions`, 
  - `JLD2`, 
  - `DataFrames`,
  - `Random`,
  - `Measures`

### Running the Project
- Download or clone the repository to your local machine
- Using VS Code, open the folder with the Julia extension installed
- In the `scripts/` folder, open and run `run_all.jl` to reproduce all simulations and generate outputs
  - The first line of the script `cd(normpath(joinpath(@__DIR__, "..")))` ensures that that all file paths are relative to the main project folder to avoid manual setup.




