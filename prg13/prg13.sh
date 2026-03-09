#!/bin/bash

read -p "enter a number :" n
fact=1
while [ $n -gt 1 ]
do
	fact=$(($fact * $n))
	n=$((n - 1))
done
echo "factorial="$fact
