#!/bin/bash


./replica_rgbd.sh
./replica_mono.sh

./tum_mono.sh
./tum_rgbd.sh

./euroc_stereo.sh

cd .. 

cd eval

source ~/miniconda3/etc/profile.d/conda.sh
conda activate prgs-slam

python onekey.py --dataset_center_path "/home/lzy/workingspace/MonoGS/datasets/" --result_main_folder "/home/lzy/workingspace/Scaffold-GS-cpp/results/"