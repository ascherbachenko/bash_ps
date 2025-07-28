#!/bin/bash

declare -A week=([1]="Monday" [2]="Tuesday" [3]="Wednesday" [4]="Thursday" [5]="Friday" [6]="Saturday" [7]="Sunday")

read -p "Input number week's day: " day
echo "Number $day this week's day: ${week[$day]}"