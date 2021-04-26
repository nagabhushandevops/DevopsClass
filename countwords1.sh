#!/bin/bash
filename='file4'	
while read line
do
   n=$( echo "$line"| wc -c )
    echo "$line $n "
   
done
