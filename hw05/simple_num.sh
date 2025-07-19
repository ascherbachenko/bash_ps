#!/bin/bash

simple_num(){
    read -p "Input number: " number

    count=0
    if [ $numer -eq 1 ] || [ $numer -eq 2 ]; then
        echo "Number $number simple"
    else
        for (( del=2; del<$number; del++ )); do
            if (( $number % $del == 0 )) ; then
                ((count++))
            fi
        done
    fi

    if [ $count -gt 1 ]; then
        echo "Number $number not simple"
    else
        echo "Number $number simple"
    fi
}

simple_num