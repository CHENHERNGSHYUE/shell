#!/bin/bash

echo -e "\e[32m======整行打印======\e[0m"
cat read.txt |awk '{print $0}'

echo -e "\e[32m======打印第一列======\e[0m"
cat read.txt |awk '{print $1}'

echo -e "\e[32m======打印第二列======\e[0m"
cat read.txt |awk '{print $2}'

echo -e "\e[32m======打印最後一列======\e[0m"
cat read.txt |awk '{print $NF}'



