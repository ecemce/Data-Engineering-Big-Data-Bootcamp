#!/bin/bash


cat homes.csv | grep  "Taxes" | awk -F , '{if($9>3000) {print $9 "Taxes sütunu 3000 değerinin üstündedir"} else {print $9 "Taxes sütunu 3000 değerinin altındadır"}}'

cat homes.csv | awk -F ',' '{if($9<3000) {print $0 }}' 

