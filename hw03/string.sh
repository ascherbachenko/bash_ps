#!/bin/bash
read -p "Input string: " string
read -p "Input understring: " understring

if [[ $string == *$understring* ]]; then
    echo "The String have the understring"
else
    echo "The String haven't the understring"