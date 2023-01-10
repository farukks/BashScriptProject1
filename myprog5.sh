#!/bin/bash

#Storing default path name
path="."
#Checking whether is there a wildcard argument or not
if [ $# -eq 0 ]
  then
    echo "No wildcard argument supplied"
    exit -1
fi
#Checking if there is a path argument or not
if [ $# -eq 2 ]
   then
     path=$2
fi
#Checking if the path directory exist or not
if [ ! -d "$path" ]
  then
    echo "Directory does not exist!"
    exit -2
fi
#Finding all the files that match the wildcard in the givin path then remove them one by one
find $path -name "$1" -exec rm -i {} \;
exit 0
