#!/bin/bash

echo -e "\e[32m======原本的ps -ef======\e[0m"
ps -ef

echo -e "\e[32m======ps -ef搭配awk技術======\e[0m"
ps -ef| awk '{print $3}'

#-F表示已什麼符號進行列分隔，默認是空白
echo -e "\e[32m======ps -ef搭配awk -F技術======\e[0m"
ps -ef| awk -F/ '{print $NF}'

