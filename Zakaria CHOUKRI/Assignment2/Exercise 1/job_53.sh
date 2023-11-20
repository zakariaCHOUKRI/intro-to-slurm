#!/bin/bash
#SBATCH --job-name=job_53
#SBATCH --output=output_53.txt
#SBATCH --partition=special
#SBATCH --ntasks=53
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 53 python3 script.py
