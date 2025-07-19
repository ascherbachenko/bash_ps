#!/bin/bash

simple_num(){
    read -p "Input number: " number

    count=0
    if [ $number -eq 1 ] || [ $number -eq 2 ]; then
        echo "Number $number simple"
    else
        for (( del=2; del<$number; del++ )); do
            if (( $number % $del == 0 )) ; then
                ((count++))
            fi
        done
    fi

    if [ $count -eq 0 ]; then
        echo "Number $number simple"
    else
        echo "Number $number not simple"
    fi
}

simple_num