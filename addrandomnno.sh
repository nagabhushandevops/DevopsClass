#!/bin/bash
var=$*
sum=0
for i in $var
do
	sum=`expr $sum + $i`
done 
echo "Sum of $var is $sum"
