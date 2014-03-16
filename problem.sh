#!/bin/bash

max=`for i in $(ls -d */); do echo ${i%%/}; done | sort -n | tail -n 1`
max=$((max + 1))

mkdir $max
touch $max/{input.txt,output.txt,a.pas}
echo $max
