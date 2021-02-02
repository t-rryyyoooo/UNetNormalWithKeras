#!/bin/bash

readonly data_dir="/mnt/data/Abdomen"
readonly model_path="model_path"
readonly image_name="imaging_resampled.nii.gz"
readonly label_name="segmentation_resampled.nii.gz"
readonly mask_name="mask_resampled.mha"
readonly save_dir="data"
readonly num_array=("00" "01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "26" "27" "28" "29")

for number in ${num_array[@]}
do
 image_path="${data_dir}/case_${number}/${image_name}"
 label_path="${data_dir}/case_${number}/${label_name}"
 mask_path="${data_dir}/case_${number}/${mask_name}"
 save_image_path="${save_dir}/image/case_${number}"
 save_label_path="${save_dir}/label/case_${number}"
 save_image_text_path="${save_dir}/text/image/case_${number}.txt"
 save_label_text_path="${save_dir}/text/label/case_${number}.txt"

 echo "image_path:${image_path}"
 echo "label_path:${label_path}"
 echo "mask_path:${mask_path}"
 echo "model_path:${model_path}"
 echo "save_image_path:${save_image_path}"
 echo "save_label_path:${save_label_path}"
 echo "save_image_text_path:${save_image_text_path}"
 echo "save_label_text_path:${save_label_text_path}"


 # Cutting image.
 #python3 extractPatchComposed.py ${image_path} ${model_path} ${save_image_path} ${save_image_text_path} --mask ${mask_path}

 # Cutting label.
 #python3 extractPatchComposed.py ${label_path} ${model_path} ${save_label_path} ${save_label_text_path} --mask ${mask_path}

done
