#!/bin/bash
#SBATCH --job-name=job_24
#SBATCH --output=output_24.txt
#SBATCH --partition=special
#SBATCH --ntasks=24
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 24 python3 script.py
