#!/bin/bash

readonly merge_text_path="data/text/merge"
readonly save_dir="data/textList"
readonly training=("10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29" "00 01 02 03 04 05 06 07 08 09 20 21 22 23 24 25 26 27 28 29" "00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19")
readonly validation=("00 01 02 03 04 05 06 07 08 09" "10 11 12 13 14 15 16 17 18 19" "20 21 22 23 24 25 26 27 28 29")
readonly test=("00 01 02 03 04 05 06 07 08 09" "10 11 12 13 14 15 16 17 18 19" "20 21 22 23 24 25 26 27 28 29")

for x in 0 1 2
do

 save_path="${save_dir}/fold_${x}"
 echo "merge_text_path:${merge_text_path}"
 echo "save_path:${save_path}"
 echo "training:${training[x]}"
 echo "validation:${validation[x]}"
 echo "test:${test[x]}"

 python3 separatePatient.py ${merge_text_path} ${save_path} --training ${training[x]} --validation ${validation[x]} --test ${test[x]}

done
