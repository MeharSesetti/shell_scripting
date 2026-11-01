#!/bin/bash

#if the user is not providing arguments then ... the script as to tell the usage... 

if [ -z $name ]; then 
	echo "Usage: $0 <argument>"
	exit 1
fi

#verify the user is running with sudo access or not... 
user=$(id -u)
if  [ "$user" -ne 0 ]; then 
	echo "Try running the script using sudo access."
	exit 1
else 
	echo "You are the root user. "
	echo "verifying $1 is installed or not in the system......"
fi 

validate(){
	if [ $1 -ne 0 ]; then 
		echo "$2 is failed."
	else 
		echo "$2 is installed."
	fi
}

verify=$(rpm -qa| grep $1)
check=$?

if [ "$check" -ne 0 ]; then
	echo "Installing $1"
	dnf install $1 -y
	# to verify above command is success or not .... we have to validate it using function... 
	validate $? $1
else 
	echo "$1 already installed."
	exit 1
fi
