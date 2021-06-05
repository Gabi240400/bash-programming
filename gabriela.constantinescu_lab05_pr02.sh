#!/bin/bash

for item in "$@"
do
	awk 'BEGIN{i=0} {a[i]=$0;i++} END{for (j=i-1;j>=0;j--) print a[j]}' "$item"
done
