#!/bin/bash


touch dosya1
touch dosya2

mkdir dizin1
mkdir dizin2


for i in $(ls)
do
	if [ -i $f ]
	then
        	echo "$i bir dosyadır"
	fi

	if [ -d $i ]
	then
		echo "$i bir dizindir"
	fi
done

find . -type d -exec echo "{} dosyadir" \;
find . -type f -exec echo "{} dizindir" \;
