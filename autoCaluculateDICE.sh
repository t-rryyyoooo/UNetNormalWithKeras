#!/bin/bash

readonly true_dir="/mnt/data/Abdomen"
readonly pred_dir="/mnt/data/Abdomen"
readonly save_path="data/result/DICE.csv"
readonly patient_list="00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29"
readonly class_label="0 1 2 3 4 5 6 7 8 9 10 11 12 13 14"
readonly true_name="segmentation_resampled.nii.gz"
readonly pred_name="label.mha"

echo "true_dir: ${true_dir}"
echo "true_name: ${true_name}"
echo "pred_dir: ${pred_dir}"
echo "pred_name: ${pred_name}"
echo "save_path: ${save_path}"
echo "patient_list: ${patient_list}"

#python3 caluculateDICE.py ${true_dir} ${pred_dir} ${patient_list} --class_label ${class_label} --true_name ${true_name} --predict_name ${pred_name}

