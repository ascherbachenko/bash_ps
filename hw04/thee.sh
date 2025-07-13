#!/bin/bash

value=1

while [ $value -le 10 ]; do
    echo  $(( $value * 3 ))
    value=$(( $value + 1 ))
done
