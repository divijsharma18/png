#!/bin/bash
#SBATCH --qos=debug
#SBATCH --time=20
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --constraint=cpu
#SBATCH --output=slurm-.o%j
#SBATCH --error=slurm-.e%j

module load conda
module load cudatoolkit/12.0
module load cudnn/8.9.3_cuda12
module load python
conda activate nbodykit-env


srun python Quijote_full_script.py
