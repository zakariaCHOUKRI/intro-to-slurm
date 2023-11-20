#!/bin/bash
#SBATCH --job-name=job_52
#SBATCH --output=output_52.txt
#SBATCH --partition=special
#SBATCH --ntasks=52
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 52 python3 script.py
