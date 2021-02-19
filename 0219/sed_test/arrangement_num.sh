#!/bin/bash

cat number.txt |sed 's/ /\n/g' |grep -v "^$" |sort -n| sed -n '1p;$p'

#sed 把空格變換行符號
#grep -v "^$"排除空白行

#grep -v 是grep的相反詞

#sort從小到大排序 sort -nr就是從大到小 如果什麼都沒加，就是根據句首從小到大排

#再sed一次，因為排列結束，就可找出最大最小值

# "$" 表示最後一行
