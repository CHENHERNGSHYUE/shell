#!/bin/bash
#automatic backup linux system files

#define variables

SOURCE_DIR=$1
TARGET_DIR=./backup

YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`
WEEKDAY=`date +%u` #Mon=1,Tue=2 ... Sun=7

A_NAME=`date +%H%M`
FILES=${A_NAME}_system_backup.tgz

CODE=$?

if
	[ -z "$*" ] ; # test -z判斷是否為空值
then
	echo -e "\e[032m請選擇要備份的資料跟資料夾\e[0m"
	exit
fi

#判斷備份資料夾是否已存在

if
	[ ! -d $TARGET_DIR/$YEAR/$MONTH/$DAY ] ; #-d是判斷資料夾、-f是判斷資料
then
	mkdir -p $TARGET_DIR/$YEAR/$MONTH/$DAY #-p確保建立資料會連父目錄的都一起建
	echo -e "\e[032mThe $TARGET_DIR is created success\e[0m"
fi

#Full backup
FULL_Backup(){
	if
		[ "$WEEKDAY" -eq "7" ] 
	then
		rm -rf $TARGET_DIR/snapshot
		cd $TARGET_DIR/$YEAR/$MONTH/$DAY ; tar -g $TARGET_DIR/snapshot -czvf $FILES ${SOURCE_DIR[@]} #-g是建立快照檔
		[ "$CODE" == "0" ] && echo -e "\e[032m備份成功\e[0m"
	fi
}

#Incremental backup
ADD_Backup(){
        if
                [ "$WEEKDAY" -ne "7" ]
        then
                cd $TARGET_DIR/$YEAR/$MONTH/$DAY ; tar -czvf $FILES ${SOURCE_DIR} #-g是建立快照檔
                [ "$CODE" == "0" ] && echo -e "\e[032m備份成功\e[0m"
        fi
}
sleep 3
FULL_Backup;ADD_Backup
