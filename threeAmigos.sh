#!/bin/bash

#CPE 422 HW4 Problem 4

#script that takes 4 command line integer arguments
#the first three arguments are summed
#the 4th argument is then subtracted from this sum using subtractMachine.sh
#example invocation - ./threeAmigos.sh 1 3 4 6 - would echo comments and 1+3+4-6

echo Summing args 1 2 and 3
sum=$(($1+$2+$3))
echo Sum = $sum
echo Invoking subtractMachine.sh
./subtractMachine.sh $sum $4
echo threeAmigos.sh complete
