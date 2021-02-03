#!/bin/bash
readonly num_array=("00" "01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "26" "27" "28" "29")

readonly data_dir="data/textList"
readonly save_dir="data/modelweight"

for x in 0 1 2
do
 training_data="${data_dir}/fold_${x}/training.txt"
 validation_data="${data_dir}/fold_${x}/validation.txt"
 save_path="${save_dir}/fold_${x}"

 echo "training_data:${training_data}"
 echo "validation_data:${validation_data}"
 echo "save_path:${save_path}"

 #python3 rebuild.py ${training_data} -t ${validation_data} -e 100 -b 3 --logdir ${save_path}

done
