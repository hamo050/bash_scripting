#!/bin/bash

# create dirs from N to N+10
# to delete use rmdir {1..10}
############################

cur=1
while [[ "$cur" -le 10 ]]
do
	if [[ -e "$cur" ]]
	then
		echo File $cur already exists
		cur=$((cur + 1 ))
		continue
	fi
	mkdir "$cur"
	cur=$(( cur + 1 ))
done
