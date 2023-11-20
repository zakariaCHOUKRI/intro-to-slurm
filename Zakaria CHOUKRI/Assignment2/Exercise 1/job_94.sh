#!/bin/bash
#SBATCH --job-name=job_94
#SBATCH --output=output_94.txt
#SBATCH --partition=special
#SBATCH --ntasks=94
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 94 python3 script.py
