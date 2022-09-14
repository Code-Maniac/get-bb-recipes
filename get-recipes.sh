#!/bin/bash

input=$(bitbake-layers show-recipes)
regex="^([0-9A-Za-z\.\-]+):$"
for line in $input
do
    if [[ $line =~ $regex ]]; then
        name="${BASH_REMATCH[1]}"
        echo ${name}
    fi
done

