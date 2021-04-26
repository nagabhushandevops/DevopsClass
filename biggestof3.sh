#!/bin/bash
echo "Enter no1"
read no1
echo "enter no2"
read no2
echo "enter no3"
read no3

if [ $no1 -gt $no2 ] && [ $no1 -gt $no3 ]
then 
	echo $no1 is biggest
elif [ $no2 -gt $no1 ] && [ $no2 -gt $no3 ]
then
echo $no2 is biggest
else
	echo $no3 is biggest
fi

