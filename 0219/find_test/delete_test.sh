#!/bin/bash

touch deleteFile && ls

echo 刪除了...

find . -name "deleteFile" -exec rm -rf {} \; #也可以 cp mv喔

ls
