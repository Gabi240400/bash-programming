#!/bin/bash

declare -i pos
pos=1
declare -i nr_fis
nr_fis=-1

while read line
do
	pos=1
	for item in "$@"
	do
		if [ $pos -ne 1 ]
    	then
			nr_fis=`find $item -type f | grep "/$line$" -c`
			if [ $nr_fis -ge 1 ]
			then
				IFS=$'\n'
				for fis in `find $item -type f | grep "/$line$"`
				do
					rm "$fis"
				done
			fi
			IFS=$Field_Separator
		else
		pos=$pos+1
		fi
	done
done < $1
