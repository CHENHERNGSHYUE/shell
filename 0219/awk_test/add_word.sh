#!/bin/bash

echo -e "\e[32m======implement by sed======\e[0m"

cat read.txt |awk '{print $0}' |sed 's/^/sed: /g'

echo -e "\e[32m======implement by awk======\e[0m"
cat read.txt |awk '{print "awk: "$0}' #在裡面加雙引號去print" 
