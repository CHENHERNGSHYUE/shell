#!/bin/bash

echo -e '\033[32m------Green------\033[1m'

select i in "I_am_one" "I_am_two" "I_am_three"

do
	case $i in
		I_am_one)
		echo 1
		exit
		;;
		I_am_two)
		echo 2
		exit
		;;
		I_am_three)
		echo 3
		exit
		;;
	esac
done

