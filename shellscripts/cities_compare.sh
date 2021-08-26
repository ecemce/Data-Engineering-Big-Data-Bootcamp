#!/bin/sh

declare -a liste
s=0
for satir in $(cat cities.csv | tr -d " " | awk -F ',' '{ print $3 $9 }' | grep \"R)
do
  liste[$s]=$satir
  s=$(echo $s+1|bc)
done

echo ${#liste[@]}

#echo ${liste[@]}

#echo ${liste[0]}

s=0

while true
do
  echo ${liste[$s]}
  s=$((s+1))
  if [[ $s -gt ${#liste[@]} ]]
  then
    break
  fi
done
