#!/bin/bash

simple_num(){
    read -p "Input number: " number

    count=0

    for (( del=2; del<10; del++ )); do
        if (( $number % $del == 0 )) ; then
            ((count++))
        fi
    done

    if [ $count -gt 1 ]; then
        echo "Number $number not simple"
    else
        echo "Number $number simple"
    fi
}

simple_num