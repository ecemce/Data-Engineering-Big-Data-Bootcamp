#!/bin/bash


toplam=0
for i in $(cat airtravel.csv |grep -v "1958" | awk -F, '{print $2}')
do
toplam=$(( $toplam + $i ))
done

echo $toplam
