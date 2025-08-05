#!/bin/bash

backup_dirs=($1 $2 $3)

dest_dir="/bak"
dest_server="host1"
backup_time="05042025"

# Create compress archive
cd /tmp
for dir in "${backup_dirs[@]}"; do
    tar -czvf bak_${backup_time}.tar.gz $dir
done

# Send bak to server
for bak in /tmp/bak_*.tar.gz; do
    scp $bak root@$dest_server:$dest_dir
done

# Delete bak from temp folder
for bak in /tmp/bak_*.tar.gz; do
    rm $bak
done