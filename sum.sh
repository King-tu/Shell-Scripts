#!/bin/bash

#
# Program:
#	Calculate the sum between 1 and the number entered by the user.
# 2019/04/17	Kingtu	First release
#

num=0

while [ $num -lt 1 ]
do
  read -p "Please input a number: " num
done

sum=0

for((i=1;i<=$num;i++))
do
  sum=$(($sum+$i))
done

echo $sum
