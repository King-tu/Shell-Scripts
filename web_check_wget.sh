#!/bin/bash
#
# Program:
#	check web url is OK or not
# 2019/04/20	kingtu	ver1.1
#

arr_web=(
http://www.yunweipai.com
http://www.taobao.com
http://www.chengxuyaun.com
http://10.0.0.7
http://www.baidu.com
http://www.hao123.com
)

for web_url in ${arr_web[*]}
do
	wget -t 2 -T 5 --spider $web_url &> /dev/null

	if [ "$?" -eq 0 ]; 
	then
		echo "Server $web_url is up."
	else
		echo "Server $web_url is down."
	fi
done
