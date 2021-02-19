#!/bin/bash
df -h|grep -v "Size"|awk '{print $1,$5}'|sort -nf| sed -n '1p'

