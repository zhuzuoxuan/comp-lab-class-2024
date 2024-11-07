#!/bin/bash
#SBATCH --job-name=KALJ_production  # 作业名称
#SBATCH --output=production_output_%j.log  # 输出文件
#SBATCH --error=production_error_%j.log    # 错误日志文件
#SBATCH --time=04:00:00                    # 设置作业运行时间限制
#SBATCH --ntasks=4                         # 总共使用4个任务
#SBATCH --cpus-per-task=4                  # 每个任务使用1个CPU
#SBATCH --mem=16G                          # 请求16GB的内存

# 清除所有已加载模块
module purge

# 加载 LAMMPS 模块
source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

# 配置文件列表，按照温度递减顺序
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

# 运行生产模拟的循环
for config in "${config_files[@]}"; do
    echo "Running production simulation with configuration file $config"
    mpirun lmp -var configfile ../Inputs/n360/$config -var id 1 -in ../Inputs/production_3d_binary.lmp
done

echo "Production simulations completed."
