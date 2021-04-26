#!/bin/bash
case $1 in
	mon) echo "To copy a file"
		cp tfile1 tfile2
		;;
	tue) echo "To rename the file"
		mv tfile2 rtfile1
		;;
	wed) echo "To backup the file"
		cp rtfile1 rtfile1.bkp
		;;
	thu | fri) echo "Delete the file"
		rm tfile2
		;;
	sat | sun) echo "create a file"
		touch newfile
		;;
	*) echo "Invalid Input"
		;;
esac
