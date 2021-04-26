#!/bin/bash
read name
if [ -L $name ]; then echo "$name is a Link"
elif [ -f $name ]; then echo "$name is File"
elif [ -d $name ]; then echo "$name is Directory"
else
	echo "$name does not exist"
fi
