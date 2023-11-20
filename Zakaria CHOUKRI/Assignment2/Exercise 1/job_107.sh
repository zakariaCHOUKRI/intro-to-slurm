#!/bin/bash
#SBATCH --job-name=job_107
#SBATCH --output=output_107.txt
#SBATCH --partition=special
#SBATCH --ntasks=107
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 107 python3 script.py
