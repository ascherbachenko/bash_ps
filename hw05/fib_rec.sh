#!/bin/bash

fib() {
    local n=$1
    local a=0
    local b=1
    for (( i=0; i<n; i++ )); do
        if ((i <= 1)); then
            echo -n "$i "
        else
            local next=$((a + b))
            echo -n "$next "
            a=$b
            b=$next
        fi
    done
}

read -p "Input count: " n

if [ $n -le 3 ]; then
        echo "Number is wrong"
else
        fib $n
fi