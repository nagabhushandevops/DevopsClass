#!/bin/bash
var="1 2 3 4 5"
sum=0
for i in $var
do
	sum=`expr $sum + $i`
done
echo "Sum of $var is $sum"
