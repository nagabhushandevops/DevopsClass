#!/bin/bash
echo "Enter a number"
read num
fact=0
while [ $num -gt 0 ]
do
	fact=$(( fact + num))
	num=$(( num - 1))
done
echo "addition is : $fact"
