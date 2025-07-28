#!/bin/bash

declare -a week=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")

change_days=${week[4]}
week[2]=${week[2]}
week[6]=$change_days

# Show array
echo ${week[@]}