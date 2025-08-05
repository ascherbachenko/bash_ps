#!/bin/bash

# Login
read -p "Input login user: " $username

for server in $(cat servers.txt); do
	ssh root@$server
	sudo useradd -m -s /bin/bash $username
	if [ $? -ne 0 ]; then
		break
	fi
	
	grep "^$username" /etc/passwd > /dev/null
	if [$? -ne 0]; then
		break
	else
		echo "User $username added on $server:"
	fi
done