#!/bin/bash

#CPE 422 HW4 Problem 2

#this script takes 4 command line arguments and does the following: 
#creates a directory using the name of the first argument 
#creates a secondary directory inside the first using the second argument passed 
#creates a text file using the third argument as the name that contains the string "Hello World!"
#creates a link from the working directory to the sub-directory created in item 2 and uses the fourth argument as the name of the link
#dsiplays messages to the user indicating these actions
#example invocation - ./simpleAdmin.sh dir1 dir2 textfile link

if [ $# -ne 4 ]; then
	echo script requires 4 arguments
	exit 1
fi

workdir=$(pwd)
echo Current working directory is $workdir
mkdir $1
echo Directory $1 created in $workdir
cd $1
mkdir $2
cd $1/$2
echo Directory $2 created in $1
echo "Hello World!" > $1/$2/$3.txt
echo $3.txt created in $2
cd $workdir
ln -s ./$2 $4
echo Link created in $workdir to $4
echo simpleAdmin.sh complete
