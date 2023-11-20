#!/bin/bash
#SBATCH --job-name=job_32
#SBATCH --output=output_32.txt
#SBATCH --partition=special
#SBATCH --ntasks=32
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 32 python3 script.py
