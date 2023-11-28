#!/bin/bash

mkdir data
cd data

# classification dataset
wget --no-check-certificate https://shapenet.cs.stanford.edu/media/modelnet40_normal_resampled.zip 
unzip modelnet40_normal_resampled.zip

# part segmentation dataset
wget --no-check-certificate https://shapenet.cs.stanford.edu/media/shapenetcore_partanno_segmentation_benchmark_v0_normal.zip
unzip shapenetcore_partanno_segmentation_benchmark_v0_normal.zip

# semantic segmentation dataset
# get URL from https://cvg-data.inf.ethz.ch/s3dis/
wget https://cvg-data.inf.ethz.ch/s3dis/Stanford3dDataset_v1.2_Aligned_Version.zip
unzip Stanford3dDataset_v1.2_Aligned_Version.zip
cd ../data_utils
source ~/anaconda3/etc/profile.d/conda.sh
conda activate pointnet
python collect_indoor3d_data.py
