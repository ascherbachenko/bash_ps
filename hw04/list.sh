#!/bin/bash
if [ -d /var/var ]; then
    for file in /var/var/*
    do
        echo $file
    done
else
    echo "Directory not found"
fi