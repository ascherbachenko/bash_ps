#!/bin/bash

positiv(){
    read -p "Input num: " number

    if [ $number -gt 0 ]; then
        echo "Number $number is positive"
    elif [ $number -lt 0 ]; then
        echo "Number $number is negative"
    else
        echo "Number $number is null"
    fi
}

positiv