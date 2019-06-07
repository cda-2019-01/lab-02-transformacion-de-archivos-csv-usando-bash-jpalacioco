#!/bin/bash
# Laboratorio No 2

x=("data1.csv" "data2.csv" "data3.csv")

for n in ${x[*]}
do
  i=1
  while read line; do
    # reading each line
    lineai=($line)
    #echo "$i ${lineai[1]}"
    for ii in $(echo ${lineai[1]} | tr "," "\n")
      do
       echo $n,$i,${lineai[0]},$ii
      done

    i=$((i+1))
  done < $n
done