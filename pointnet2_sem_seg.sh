#!/bin/bash

#conda command activate
source ~/anaconda3/etc/profile.d/conda.sh
conda activate pointnet

# ## e.g., pointnet2_ssg without normal features
python train_semseg.py --gpu 7 --model pointnet2_sem_seg --log_dir pointnet2_sem_seg
python test_semseg.py --gpu 7 --log_dir pointnet2_sem_seg 
