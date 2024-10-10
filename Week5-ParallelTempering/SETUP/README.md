# Replica Exchange Simulation Setup

This setup includes three directories named `T300`, `T400`, and `T600`, each containing a GROMACS run input file (`adp.tpr`). The directories and `adp.tpr` files are prepared for a replica exchange molecular dynamics simulation, with each directory representing a different temperature.

## Directory Structure

- **T300**: Contains `adp.tpr` with a temperature of **300 K**.
- **T400**: Contains `adp.tpr` with a temperature of **363 K**.
- **T600**: Contains `adp.tpr` with a temperature of **440 K**.

## Modified Parameters

The `adp.tpr` files in each directory were generated using the same `.mdp`, `.gro`, and `.top` files, with the following parameters adjusted in the `.mdp` file for each directory:

- **ref_t**: Set to the target temperature for each replica.
  - `T300`: `ref_t = 300` (Temperature 300 K)
  - `T400`: `ref_t = 363` (Temperature 363 K)
  - `T600`: `ref_t = 440` (Temperature 440 K)
- **gen_temp**: The initial temperature for velocity generation, adjusted to match `ref_t`.
  - `T300`: `gen_temp = 300`
  - `T400`: `gen_temp = 363`
  - `T600`: `gen_temp = 440`

All other parameters (such as `nsteps`, `dt`, `integrator`, and `constraints`) remain identical across all three `.mdp` files to ensure compatibility between replicas during the exchange process.

## Usage

The directories are set up for use in a replica exchange simulation, where each directory corresponds to a different replica at a specific temperature. Ensure that the paths are correct when running the simulation with `gmx mdrun` or any other tools.
