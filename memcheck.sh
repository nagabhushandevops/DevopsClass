#!/bin/bash
mem=`df -h . | tail -1 | awk -F " " '{print $5}' | sed 's/%//g'`
if [ $mem -gt 25 ]
then
	echo "Memory Reached"
fi
