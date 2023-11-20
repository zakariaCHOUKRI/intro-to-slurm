#!/bin/bash
#SBATCH --job-name=job_106
#SBATCH --output=output_106.txt
#SBATCH --partition=special
#SBATCH --ntasks=106
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 106 python3 script.py
