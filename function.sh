#!/bin/bash

#
# Program:
#	Use funtion to print what you input
# 2019/04/19	kingtu	
#

function printit() {
#	echo -n "The parameter what you input is: "
	echo "The parameter what you input is: $1 "
}

case $1 in
	"one" ) printit $1 | tr '[a-z]' '[A-z]' ;;
	"two" ) printit $1 | tr '[a-z]' '[A-z]' ;;
	"three" ) printit $1 | tr '[a-z]' '[A-z]' ;;
	* ) echo "Usage $0 {one|two|three}" ;;
esac

