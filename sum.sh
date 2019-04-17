#!/bin/bash

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
