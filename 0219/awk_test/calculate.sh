#!/bin/bash

add(){
	echo $1 $2|awk '{print $1+$2}'
}

minus(){
	echo $1 $2|awk '{if($1>$2){print $1-$2}else{print $2-$1}}'
}

select i in "add" "minus"
do
	case $i in
		add)
		add $1 $2
		exit
		;;
		minus)
		minus $1 $2
		exit
		;;
		*)
		echo no idea
		;;
	esac
done
