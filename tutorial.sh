#!/bin/bash

# Basic Print Line
echo "Hello World!"

# Bash Variables
MY_VAR=5
## Encapsulation in string
echo "My variable is ${MY_VAR}"                                        
## Substitution 
FILELIST=`ls`
TIMESTAMP="/tmp/dir/my_file_$(/bin/date +%Y-%m-%d).txt"
echo "${TIMESTAMP}"

A=`cd`
B=$(ls)
cd
echo "hello world!"

for i in {1..10}; do
    echo $i
done