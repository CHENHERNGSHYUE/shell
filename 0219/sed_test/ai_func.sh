#!/bin/bash

sed '/is/a after' test.txt #在含有is的句字後加上afterIs

#如果是句子之前用

sed '/is/i before' test.txt
