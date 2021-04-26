#!/bin/bash

# 1. To search a word in the file
# 2. To edit a file
# 3. To create a soft link for a file
# 4. To find location of file or directory
# 5. To check file or directory
# 6. To exit from the script

echo "choose the task from the below option"
echo "1. To search a word in the file\n2. To edit a file\n3. To create a soft link for a file\n4. To find location of file or directory\n5. To check file or directory\n6. To exit from the script"
read opt

case $opt in
	1) echo "Enter a word to search"
		read word
		grep "$word" * > temp
		if [ $? -eq 0 ];
		then
			echo "$word is found"
			cat temp
		else
			echo "$word is not found"
		fi
		rm temp
		;;
	2) echo "Enter the filename to edit"
		read name
		if [ -L $name ]; then echo "$name is a link"
		elif [ -d $name ]; then echo "$name is a Directory"
		elif [ -f $name ]; then echo "$name is a file"
			vim $name
		else
			echo "$name does not exist"
		fi
		;;
	3) echo "Enter a filename to create a softlink"
		read file
		if [ ! -f $file ]; then echo "File does not exist"
			exit 1
		fi
		echo "Enter softlink name"
		read link
		if [ -L $link ]; then echo "Link already exist"
			exit 1
		fi
		ln -s $file $link
		;;
	4) echo "Enter the file or directory to find the location"
		read name
		find . -iname "$name" > temp1
		if [ $? -eq 0 ];then echo "$name is in below location"
			cat temp1
		else 
			echo "$name not found"
		fi
		;;
	5) echo "Enter the name of file or directory or link"
		read name
		if [ -L $name ]; then echo "$name is a link"
		elif [ -d $name ]; then echo "$name is a directory"
		elif [ -f $name ]; then echo "$name is a file"
		else
		echo "$name does not exist"
		fi
		;;
	*) exit 1
		;;
esac	
