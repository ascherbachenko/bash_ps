#!/bin/bash
read -p 'Input 1 number: ' number1
read -p 'Input 2 number: ' number2

if [ $number1 -gt $number2 ]; then
    private=$(( $number1 / $number2 ))
    remainder=$(( $number1 - $private * $number2 ))
    echo "Private: $private"
    echo "Remainder: $remainder"
fi

if [ $number1 -lt $number2 ]; then
    private=$(( $number2 / $number1 ))
    remainder=$(( $number2 - $private * $number1 ))
    echo "Private: $private"
    echo "Remainder: $remainder"
fi