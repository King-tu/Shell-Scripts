#!/bin/bash

#
# Program:
#	Calculate the sum between 1 and the number entered by the user.
# 2019/04/18	Kingtu	Second release
#

sum=0

while [ $sum < 1 ]
do
	read -p "please input a number: " num
done

for i in `seq 1 $num`
do
	sum=$(($sum+$i))
done 

echo $sum



