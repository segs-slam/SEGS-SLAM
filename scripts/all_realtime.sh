#!/bin/bash

./tum_mono_realtime.sh
./tum_rgbd_realtime.sh

./replica_mono_realtime.sh
./replica_rgbd_realtime.sh


./euroc_stereo_realtime.sh

cd .. 

cd eval

source ~/miniconda3/etc/profile.d/conda.sh
conda activate gaussian_splatting

python onekey.py --dataset_center_path "/home/lzy/workingspace/MonoGS/datasets/" --result_main_folder "/home/lzy/workingspace/Scaffold-GS-cpp/results/"