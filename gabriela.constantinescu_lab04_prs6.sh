#!/bin/bash

declare -r carac_spec=$1
#carac_spec=$1
file_name=$2
sed -r "s|[^A-Z]|$carac_spec|g" "$file_name"
