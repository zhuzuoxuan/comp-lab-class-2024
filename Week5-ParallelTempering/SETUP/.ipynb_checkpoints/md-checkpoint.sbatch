#!/bin/bash
#SBATCH --nodes=1                  # 节点数（保持不变）
#SBATCH --ntasks-per-node=3        # 每个节点的任务数（每节点运行8个任务，即使用8个核）
#SBATCH --cpus-per-task=2          # 每个任务的 CPU 核数（每任务1个线程）
#SBATCH --time=4:00:00             # 运行时间（最大8小时）
#SBATCH --mem=16GB                 # 每个节点分配的内存（保持不变）
#SBATCH --job-name=gromacs_mpi     # 作业名称
#SBATCH --output=gromacs_mpi.out   # 输出文件

# 加载必要的模块
module purge
module load gromacs/openmpi/intel/2018.3 # 根据实际环境调整 GROMACS 模块版本

# 使用 mpirun 运行 GROMACS
mpirun -np 3 gmx_mpi mdrun -s adp -multidir T300/ T400/ T600/ -deffnm adp_exchange3temps -replex 500

