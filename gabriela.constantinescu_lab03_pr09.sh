#!/bin/bash
declare -i n1
declare -i n2
declare -i n3
n1=$1
n2=$2
n3=$3

#i=cel mai mic numar dintre n1, n2 si n3
declare -i m
m=0

if [ $n1 -le $n2 ]
then
	m=n1
else
	m=n2
fi

if [ $n3 -le $m ]
then
	m=n3
fi

declare -i div
div=0

for (( diviz=$m;diviz>=1;diviz-- ))
do
	if [[ $((n1%diviz)) -eq 0 && $((n2%diviz)) -eq 0 && $((n3%diviz)) -eq 0 ]]
	then
		div=diviz
		break
	fi
done

echo $div
