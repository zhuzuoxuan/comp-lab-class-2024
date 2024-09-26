#!/bin/bash
#SBATCH --nodes=1                  # 节点数（保持不变）
#SBATCH --ntasks-per-node=1        # 每个节点的任务数（每节点运行8个任务，即使用8个核）
#SBATCH --cpus-per-task=16          # 每个任务的 CPU 核数（每任务1个线程）
#SBATCH --time=6:00:00             # 运行时间（最大8小时）
#SBATCH --mem=64GB                 # 每个节点分配的内存（保持不变）
#SBATCH --job-name=gromacs_mpi     # 作业名称
#SBATCH --output=gromacs_mpi.out   # 输出文件

# 加载必要的模块
module purge
module load gromacs/openmpi/intel/2020.4   # 根据实际环境调整 GROMACS 模块版本

# 使用 mpirun 运行 GROMACS
gmx_mpi mdrun -deffnm md_0_1 -cpi md_0_1.cpt