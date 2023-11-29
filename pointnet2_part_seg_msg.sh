#!/bin/bash

#conda command activate
source ~/anaconda3/etc/profile.d/conda.sh
conda activate pointnet

# ## e.g., pointnet2_ssg without normal features
python train_partseg.py --gpu 6 --model pointnet2_part_seg_msg --log_dir pointnet2_part_seg_msg
python test_partseg.py --gpu 6 --log_dir pointnet2_part_seg_msg 
