#!/bin/bash

multi_table(){
    read -p "Input number: " number

    for (( i=0; i<11; i++ )); do
        echo "$number x $i = $(( $number * $i ))"
    done
}

multi_table