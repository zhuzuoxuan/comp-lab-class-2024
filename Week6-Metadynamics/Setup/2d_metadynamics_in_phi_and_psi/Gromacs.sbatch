#!/bin/bash

#SBATCH --nodes=1                
#SBATCH --ntasks=4               # 总任务数
#SBATCH --ntasks-per-node=4      # 每个节点运行4个任务
#SBATCH --cpus-per-task=32        # 每个任务使用4个CPU核
#SBATCH --time=6:00:00           
#SBATCH --mem=32GB              
#SBATCH --job-name=gromacs_mpi  
#SBATCH --output=gromacs_mpi.out 

# 加载必要的模块
module purge
source /scratch/work/courses/CHEM-GA-2671-2024fa/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules

# 运行 GROMACS，不使用 mpirun，直接使用 GROMACS 的 -ntmpi 和 -ntomp 参数
gmx_mpi mdrun -s topol.tpr -deffnm 2d_metadynamics -plumed plumed.dat -ntomp 4 -cpi 2d_metadynamics.cpt -noappend

