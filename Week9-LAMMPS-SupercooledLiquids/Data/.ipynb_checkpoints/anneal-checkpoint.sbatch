#!/bin/bash
#SBATCH --job-name=KALJ_annealing  # 作业名称
#SBATCH --output=annealing_output_%j.log  # 输出文件
#SBATCH --error=annealing_error_%j.log    # 错误日志文件
#SBATCH --time=04:00:00                   # 设置作业运行时间限制
#SBATCH --ntasks=2                        # 总共使用4个任务
#SBATCH --cpus-per-task=16                 # 每个任务使用1个CPU
#SBATCH --nodes=2                         # 使用1个节点
#SBATCH --mem=16G                         # 请求16GB的内存

# 退火的配置文件列表，按照升序温度排列
config_files=(
    "kalj_n360_T1.5.lmp"
    "kalj_n360_T1.0.lmp"
    "kalj_n360_T0.9.lmp"
    "kalj_n360_T0.8.lmp"
    "kalj_n360_T0.7.lmp"
    "kalj_n360_T0.65.lmp"
    "kalj_n360_T0.6.lmp"
    "kalj_n360_T0.55.lmp"
    "kalj_n360_T0.5.lmp"
    "kalj_n360_T0.475.lmp"
    "kalj_n360_T0.45.lmp"
)

module purge
source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash


# 运行逐步退火的循环
for config in "${config_files[@]}"; do
    echo "Equilibrating system with configuration file $config"
    mpirun lmp -var configfile ../Inputs/n360/$config -var id 1 -in ../Inputs/anneal_3d_binary.lmp
done

echo "Annealing process completed."
