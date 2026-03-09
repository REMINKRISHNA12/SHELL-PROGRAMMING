#!/bin/bash

read -p "enter the limit : " limit
a=0
b=1
echo $a
echo $b
i=2
while [ $i -lt $limit ]
do
	sum=$(($a + $b))
	echo $sum
	a=$b
	b=$sum
	i=$(($i + 1))
done
