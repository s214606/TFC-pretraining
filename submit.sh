#!/bin/bash
#BSUB -J TFC
#BSUB -o TFC_LOG_%J.out  
#BSUB -q hpc
#BSUB -q gpuv100
#BSUB -gpu "num=1:mode=exclusive_process"
#BSUB -W 05:00
#BSUB -R "rusage[mem=8GB]"
#BSUB -n 12
#BSUB -R "span[hosts=1]"
#BSUB -N
# all  BSUB option comments should be above this line!

# execute our command

set -e
#source .venv/bin/activate
module load python3/3.7.10

cd code/TFC
#python3 main.py
python3 main.py --training_mode pre_train --pretrain_dataset SleepEEG --target_dataset Epilepsy