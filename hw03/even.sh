#!/bin/bash

number=$1
count_number=$#
even=$(( $number % 2 ))

if [[ -z $number ]] || [[ $number -lt 0 ]] || [[ $count_number -ne 1 ]]; then
    echo "Please send one non negative number"
    exit
fi

if [[ $even -eq 0 ]]; then
    echo "Number $number is even"
elif [[ $even -ne 0 ]]; then
    echo "Number $number is odd"
fi