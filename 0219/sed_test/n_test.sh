#!/bin/bash

echo -e "\e[32m======print the sentense which has 'is'======\e[0m"
sed -n '/is/p' test.txt

echo -e "\e[32m======print the sentense whose line from 1 to 3 (including space line)======\e[0m"
sed -n '1,3p' test.txt
