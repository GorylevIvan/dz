#!/bin/bash
read num
while [ $num != "-exit" ]; do
	if [ $num = "-help" ]; then
		echo "Enter a number from 1 to 500, if you dont do that you will have an error
Enter -exit to exit the program"
	fi
	if [[ $num -gt 0 && $num -lt 501 ]]; then	
		for i in `seq 1 $num`;
		do
			echo -n "dir_" && echo -n $(pwgen -1 -s -y) && echo "_$i"
		done
	else
		echo "Error: enter a number from the desired range"
	fi
	read num
done
