#!/bin/bash

#conda command activate
source ~/anaconda3/etc/profile.d/conda.sh
conda activate pointnet

# ## e.g., pointnet2_ssg without normal features
python train_classification.py --gpu 4 --model pointnet2_cls_ssg --log_dir pointnet2_cls_ssg --num_category 10
python test_classification.py --gpu 4 --log_dir pointnet2_cls_ssg --num_category 10 
