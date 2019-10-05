#!/bin/bash 
if [ "$#" -eq "1" ];then 
	if [ -f "$1" ];then 
		for a in $(cat $1)
		do 
			useradd -s /bin/false $a
			echo "User $a added successfully" 
		done 
	else 
		echo "Input file Not Found"
		exit 1
	fi
else
	echo "Usage bash useradd/sh user.txt"
	exit 2
fi
