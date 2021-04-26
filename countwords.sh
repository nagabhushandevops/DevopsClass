#!/bin/bash
i=1
while read line
do
	words=`echo $line | wc -w`
	echo "$i line has $words words"
	i=`expr $i + 1`
done<$1




#echo "Enter the file name"
#read file
#w=`cat $file | wc -w`
#L=`cat $file | wc -l`
#c=`cat $file | wc -c`
#echo "Number of words in $file is $w"
#echo "Number of lines in $file is $L"
#echo "Number of characters in $file is $c"
