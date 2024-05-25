#!/bin/bash
filesdir=$1
searchstr=$2
if [ "2" -lt "$#" ]; then
	echo "Less than 2 arguments provided!"
	exit 1
elif [ ! -d "${filesdir}" ]; then
	echo "Provided file directory doesn't exist!"
	exit 1
else
	filenum=$(find "$filesdir" -type f | wc -l)
	wordnum=$(grep -r "$searchstr" "$filesdir" | wc -l)
	echo "The number of files are ${filenum} and the number of matching lines are ${wordnum}"
fi 
