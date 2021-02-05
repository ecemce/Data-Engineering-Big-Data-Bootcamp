#!/bin/bash
date
date +"%Y-%m-%d"
date +"%Y-%m-%d" --date="yesterday"
date +"%Y-%m-%d" --date="3 days ago"
date +"%Y-%m-%d" --date="next friday"
for i in 1 2 3 4 5 6 7 
do
	date +"%Y-%m-%d" --date="$i days ago"
done
