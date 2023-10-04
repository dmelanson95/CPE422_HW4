#!/bin/bash

#CPE 422 HW4 Problem 3

#This is a script that takes 2 integer command line arguments and:
#subtracts the smaller from the larger and then prints the different to stdout
#counts down from the difference of the numbers to 1 while printing each to stdout

if [ $# -ne 2 ]; then
	echo Incorrect number of arguments given.
	exit 1
fi

if [ $1 -gt $2 ]; then
	echo $1 is greater than $2
	difference=$(($1-$2))
elif [ $1 -lt $2 ]; then
	echo $2 is greater than $1
	difference=$(($2-$1))
else
	echo $1 equal to $2
	difference=0
fi
echo Difference = $difference

echo "Counting down:"
while (( $difference )); do
	echo $difference
	difference=$(($difference-1))
done
echo subtractMachine.sh complete
