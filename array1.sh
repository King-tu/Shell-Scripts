#!/bin/bash
#
# Program:
#	Use array for Shell Script.
# 2019/04/20	kingtu	Ver1.1
#

country[0]="Singapore"
country[1]="China"
country[2]="Japan"
country[3]="America"
country[4]="England"
country[5]="France"
country[6]="Australia"
country[7]="Korea"
country[8]="Malaysia"
country[9]="Germany"

declare -i count=0

while [ $count -lt 4 ]
do
	ran_num=$(($RANDOM%10))
	Flag=0

	if [ $count -ge 1 ]; then
		for i in `seq $count`
		do
			if [ $ran_num == ${count_arr[$i]} ]; then
				Flag=1
			fi
		done

	fi
	
	if [ $Flag == 0 ]; then
		echo "Your favorite countries are: ${country[$ran_num]}."
		count=$(($count+1))
		count_arr[$count]=$ran_num
	fi
done
