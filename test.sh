#!/bin/bash
file=contour.yaml
output=output_
count=$(cat ${file} | wc -l)
count=$((count + 1))
printf "\ntotal count $count\n"
lines=$(grep -n -e '^---$' ${file} | awk -F: '{ print $1 }')
printf "\nlines $lines\n"
lines="${lines} ${count}"
printf "\ntotal lines $lines\n"
start=$(echo ${lines} | awk '{ print $1 }')
printf "\nstart $start\n"
lines=$(echo ${lines} | sed 's/^[0-9]*//')
printf "\nfor lines $lines\n"


x=1
# for n in ${lines}
# do
#     end=$((n - 1))
#     # sed -n "${start},${end}p" ${file} > "${output}${start}-${end}.yaml"         
#     start=$n
# done  