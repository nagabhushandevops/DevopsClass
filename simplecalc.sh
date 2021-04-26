#!/bin/bash
if [ $# -ne 2 ]
then
	echo "Pass only 2 numbers"
exit 1
fi
add=`expr $1 + $2`
sub=`expr $1 - $2`
mul=`expr $1 \* $2`
div=`expr $1 / $2`
echo "Adition of given numbers is $add"
echo "Subtraction of given numbers is $sub"
echo "Multiplication of given numbers is $mul"
echo "Division of given numbers is $div"
