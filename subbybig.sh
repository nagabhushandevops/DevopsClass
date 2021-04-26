#!/bin/bash
if [ $# -ne 2 ]
then
	echo "pass only 2 arguments"
	exit 1
fi
if [ $1 -gt $2 ];
then
	sub=`expr $1 - $2`
else
	sub=`expr $2 - $1`
fi
echo "$sub"
