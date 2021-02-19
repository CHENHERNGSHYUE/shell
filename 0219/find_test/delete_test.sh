#!/bin/bash

touch deleteFile && ls

echo 刪除了...

find . -name "deleteFile" -exec rm -rf {} \;

ls
