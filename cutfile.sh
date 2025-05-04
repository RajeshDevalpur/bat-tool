#!/bin/bash
while read line
do 
    c=`echo $line | cut -d " " -f2`
    echo $c 
done < $1

