#!/bin/bash
a=$1
b=$2
c=$3

s=$(echo "scale=1; ($a + $b + $c) / 2" | bc)
area=$(echo "scale=1; sqrt($s * ($s - $a) * ($s - $b) * ($s - $c))" | bc)
echo "Square: $area"