#!/bin/bash

mkdir dictionar
cd dictionar
for name in 0 1 2 3 4 5 6 7 8 9
do
	touch "$name"
done
cd ..

for word in `grep -o -E '\w+' "$1"`
do
	for nr in 0 1 2 3 4 5 6 7 8 9
	do
		if [[ ${word:0:1} == "$nr" ]]
		then
			echo $word >> dictionar/$nr
			break
		fi
	done
done

for file in 0 1 2 3 4 5 6 7 8 9
do
	sort -o dictionar/$file dictionar/$file
done
