#!/bin/bash
#SBATCH --job-name=job_99
#SBATCH --output=output_99.txt
#SBATCH --partition=special
#SBATCH --ntasks=99
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 99 python3 script.py
