#!/bin/bash -l

#SBATCH -J aims
#SBATCH -D ./
#SBATCH --mail-type=end,fail
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --ntasks-per-core=1
#SBATCH -t 00:59:00
# #SBATCH --reservation=devel

fil=aims.out

echo $SLURM_JOB_ID > $fil
run_aims 2>&1 >> $fil 

