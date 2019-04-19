#!/bin/bash

#
# Program:
#	count the number of ip or username in a.txt and b.txt
# 2019/04/19	kingtu	ver1.0
#

# a.txt + b.txt
cat a.txt b.txt > ab.txt
cat a.txt | awk '{print $1}' | sort -u > ipA.txt
cat b.txt | awk '{print $1}' | sort -u > ipB.txt

# The number of ip in a.txt
ipnumA=$( wc -l ipA.txt )

# The number of ip in b.txt
ipnumB=$( wc -l ipB.txt )

# The number of ip in a.txt and b.txt
ipnumAB=$( cat ab.txt | awk '{print $1}' | sort -u | wc -l )

echo "The number of ip in a.txt: " $ipnumA
echo "The number of ip in b.txt: " $ipnumB
echo "The number of ip in a.txt and b.txt: " $ipnumAB


# Show the ip in b.txt but not in a.txt
cat ipA.txt ipB.txt | sort | uniq -d > ipAB.txt
echo -e "The ip in b.txt but not in a.txt is: "
cat ipB.txt ipAB.txt | sort | uniq -u

# The number of username and the number of ips corresponding to each username
echo "The number of username is: "
cat ab.txt | awk '{print $2}' | sort | uniq -c
echo "the number of ips corresponding to each username"
cat ab.txt | sort -u | awk '{print $2}' | sort | uniq -c | awk '{print $2"\t"$1}'

