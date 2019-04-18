#!/bin/bash

#
# Program:
#	create 10 new html files by use: for do...done, RANDOM, md5sum, cut, touch
# 2019/04/18	kingtu	ver1.0
#

[ -d oldboy ] || mkdir -p oldboy

cd oldboy

for i in `seq 10`
do
	touch `echo $RANDOM | md5sum | cut -c 1-10 | tr "[0-9]" "[a-z]"`_oldboy.html
done
