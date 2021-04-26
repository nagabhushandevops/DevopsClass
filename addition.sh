#!/bin/bash
if [ $# -ne 2 ]
then
	echo "Pass only 2 arguments"
	exit 1
fi
num=`expr $1 + $2`
echo "$num"
