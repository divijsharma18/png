#!/bin/bash
#SBATCH --qos=debug
#SBATCH --time=30
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=128
#SBATCH --constraint=cpu

module load conda
module load cudatoolkit/12.0
module load cudnn/8.9.3_cuda12
module load python
conda activate nbodykit-env


srun python Quijote_full_script.py
