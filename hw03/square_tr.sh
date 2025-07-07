#!/bin/bash
base=$1
height=$2

square=$(echo "scale=2; 1 / 2 * $base * $height" | bc)

echo "Square: $square"