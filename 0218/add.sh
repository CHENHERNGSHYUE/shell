#bin/bash
#important: it's not allowed space next to the "="
echo "expr test add method"
x=`expr $1 + $2`
echo $x
echo "[] test"
y=$[$1+$2]
echo $y
