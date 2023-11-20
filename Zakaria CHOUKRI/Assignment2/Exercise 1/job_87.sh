#!/bin/bash
#SBATCH --job-name=job_87
#SBATCH --output=output_87.txt
#SBATCH --partition=special
#SBATCH --ntasks=87
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 87 python3 script.py
