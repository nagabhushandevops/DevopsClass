#!/bin/bash
ser=$"ser1 ser2 ser3"
for service in $ser
do
	ps -f |grep "$ser"
	if [ $? -ne 0 ]
	then
		echo "$ser is stopped"
		sudo systemctl restart $ser
	fi
done
