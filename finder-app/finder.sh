#!/bin/sh

if  [ $# -ne 2 ];then
echo "no arguments specified"
exit 1
fi


filesdir=$1
searchstr=$2


if [ ! -d "$filesdir" ];then
echo "file not found in system"
exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
num_strings=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_strings"


exit 0
