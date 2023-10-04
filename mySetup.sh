#!/bin/bash

#Problem 1 for HW4 CPE 422

#script that sets BBB frequency to 600MHz, displays the cpu info, creates a varaible named location that stores the home directory,
#echos that values and then displays the number of items in the home directory
#example invocation - mySetup.sh

echo Setting CPU Frequency to 600Mhz
sudo cpufreq-set -f 600MHz
echo CPU frequency info:
echo -e "\n\n"
cpufreq-info
echo -e "\n\n"
location=$HOME
echo Home directory is $location
items=$(ls | wc -l)
echo $items items in working directory
echo mySetup.sh complete
