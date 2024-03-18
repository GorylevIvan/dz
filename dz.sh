#!/bin/bash
if [ "$1" == "-help" ]; then
	echo "Enter a number from 1 to 500, if you dont do that you will have an error"
	exit 1
fi
if [ "$#" != 0 ]; then
	echo "Error: incorrect number of arguments"
	exit 1
fi
read num
if [[ $num -gt 0 && $num -lt 501 ]]; then	
	for i in `seq 1 $num`;
	do
		echo -n "dir_" && echo -n $(pwgen -1 -s -y) && echo "_$i"		
	done
else
	echo "Error: enter a number from the desired range"
fi
