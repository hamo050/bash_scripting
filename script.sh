#!/bin/bash

# create dirs from N to N+10
# to delete use rmdir {1..10}
############################
############################

#echo " What dir to start from ?"
#read cur
#echo $# #ели аргумент пуст завершить скрипт
#exit 1
if [[ $# -ne 1 ]]
then
    echo "USAGE: ./scrip.sh N, where N is positive number. Create dirs from N to N+10"
    exit 1
fi

begin=$1

end=$(( $begin + 10 ))

while [[ "$begin" -le $end ]]
do
	if [[ -e "$begin" ]]
	then
		echo File $begin already exists
		begin=$((begin + 1 ))
		continue
	fi
	mkdir "$begin"
	begin=$(( begin + 1 ))
done


############################
############################
