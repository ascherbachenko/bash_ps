#!/bin/bash

while read line; do ((++i)); echo "line$i,$line,"; done < /etc/os-release | xargs -n 2 -d "," sh -c 'tr -cd "[:print]\n"; touch out/$1; echo out/$1 > $2'