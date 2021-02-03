#!/bin/bash

readonly image_text_dir="data/text/image"
readonly label_text_dir="data/text/label"
readonly save_dir="data/text/merge"
readonly suffix=".txt"
readonly num_array=("00" "01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "26" "27" "28" "29")

for number in ${num_array[@]}
do
 image_text_path="${image_text_dir}/case_${number}${suffix}"
 label_text_path="${label_text_dir}/case_${number}${suffix}"
 save_path="${save_dir}/case_${number}${suffix}"

 echo "image_text_path:${image_text_path}"
 echo "label_text_path:${label_text_path}"
 echo "save_path:${save_path}"

 python3 mergeImageLabel.py ${image_text_path} ${label_text_path} ${save_path}

done
