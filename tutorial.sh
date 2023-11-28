#!/bin/bash

#conda command activate
source ~/anaconda3/etc/profile.d/conda.sh
conda create -n pointnet python==3.7 -y
conda activate pointnet
conda list
conda install pytorch==1.6.0 cudatoolkit=10.1 -c pytorch -y
conda install -c conda-forge tqdm -y

# ## e.g., pointnet2_ssg without normal features
python train_classification.py --model pointnet2_cls_ssg --log_dir pointnet2_cls_ssg --num_category 10
python test_classification.py --log_dir pointnet2_cls_ssg --num_category 10 