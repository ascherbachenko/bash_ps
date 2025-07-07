#!/bin/bash
read -p "Input side1: " side1
read -p "Input side2: " side2

echo "Square: $(( $side1 * $side2 ))"
echo "Per: $(( 2 * ($side1 + $side2) ))"