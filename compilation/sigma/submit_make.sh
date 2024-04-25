#!/bin/bash -l

#SBATCH -J compile
#SBATCH -D ./
#SBATCH --mail-type=all
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --ntasks-per-core=1
#SBATCH -t 00:59:00
#SBATCH --account=liu-2019-26
#SBATCH --reservation=tutorial-2024-04-25

# load modules
module load buildenv-intel/2023a-eb  CMake/3.26.4

# run cmake
cmake -C cache.cmake .. 2>&1 | tee cmake.log

# run make
make -j $SLURM_NTASKS_PER_NODE 2>&1 | tee make.log

