#!/bin/bash

#find 路徑 -name 文件名稱
# '.'表示當前路徑
# '/'表示根路徑

echo -e "\e[32m======查目前路徑下的所有檔案目錄(包含子級目錄)======\e[0m"
find . -name "*"

echo -e "\e[32m======查目前路徑下的所有檔案目錄(不包含下一級目錄)======\e[0m"
find . -maxdepth 1 -name "*"

echo -e "\e[32m======查目前路徑下的所有檔案(包含子級目錄下)======\e[0m"
find . -type f -name "*"

