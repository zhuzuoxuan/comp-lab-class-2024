#!/bin/bash
#SBATCH --nodes=4                  # Use 4 nodes
#SBATCH --ntasks=48                # Total tasks (4 nodes × 12 tasks per node)
#SBATCH --ntasks-per-node=12       # 12 tasks per node
#SBATCH --cpus-per-task=1          # 1 CPU per task
#SBATCH --time=6:00:00             # Wall time (6 hours)
#SBATCH --mem=20GB                 # Memory per node
#SBATCH --job-name=proton_job        # Job name
#SBATCH --output=proton_job.out      # Output file

# Load the necessary module
module purge
module load cp2k/openmpi/intel/20201212

# Run CP2K using mpirun
mpirun -np 12 cp2k.popt -i proton.inp -o OUTPUT_FILE_NAME.log


