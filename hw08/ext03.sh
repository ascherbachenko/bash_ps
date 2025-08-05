#!/bin/bash

# Show % utilization system disk
sys_disk=$(df -h | df -h | tail -n +2 | awk  'NR == "1" {print $5}' | cut -c 1)
echo $sys_disk

if [ $sys_disk -ge 90 ]; then
    echo "Alarm! Disk more 90%" > alert.txt
fi