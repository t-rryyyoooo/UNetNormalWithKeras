#!/bin/bash

readonly data_dir="/mnt/data/Abdomen"
readonly model_path="data/3DUNetModel.json"
readonly model_weight_dir="data/modelweight"
readonly image_name="imaging_resampled.nii.gz"
readonly save_dir="data"
readonly save_name="label.mha"
readonly num_array=("00 01 02 03 04 05 06 07 08 09" "10 11 12 13 14 15 16 17 18 19" "20 21 22 23 24 25 26 27 28 29")

for i in 0 1 2
do 
 for number in ${num_array[i]// / }
 do
  image_path="${data_dir}/case_${number}/${image_name}"
  save_path="${save_dir}/image/case_${number}/${save_name}"
  model_weight_file="${model_weight_dir}/fold_${i}/latestweights.hdf5"

  echo "image_path:${image_path}"
  echo "model_path:${model_path}"
  echo "model_weight_file:${model_weight_file}"
  echo "save_path:${save_path}"


  #python3 segmentation3DUnet.py ${image_path} ${model_path} ${model_weight_file} ${save_path}


 done
done
