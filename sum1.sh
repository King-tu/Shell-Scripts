#!/bin/bash

sum=0

read -p "please input a number: " num

for i in `seq 1 $num`
do
	sum=$(($sum+$i))
done 

echo $sum



