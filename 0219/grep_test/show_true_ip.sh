#!/bin/bash

cat ip.txt|egrep "^([0-9]{1,3}\.){3}[0-9]{1,3}$"

# .也要記得用反斜線
# 小括號做成一組
# 前後用 ^ $去鎖死