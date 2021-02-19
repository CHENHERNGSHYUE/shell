#!/bin/bash

a=(k e n n y)
echo ${a[0]}

echo "矩陣結果為: ${a[@]}"
echo "矩陣數量為: ${#a[@]}"

echo "替換: ${a[@]/k/jj}"

unset a[2]
echo "驗證刪除後結果: ${a[@]}"
