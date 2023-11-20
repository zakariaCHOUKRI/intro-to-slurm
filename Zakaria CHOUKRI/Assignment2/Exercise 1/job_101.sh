#!/bin/bash
#SBATCH --job-name=job_101
#SBATCH --output=output_101.txt
#SBATCH --partition=special
#SBATCH --ntasks=101
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 101 python3 script.py
