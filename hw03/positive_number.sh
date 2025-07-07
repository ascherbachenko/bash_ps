#!/bin/bash
number=$1

if [[ $number -ge 0 ]]; then
    echo "This is positive number"
else
    echo "This is negative number"
fi