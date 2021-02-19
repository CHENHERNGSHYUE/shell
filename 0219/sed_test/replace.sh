#!/bin/bash
#sed replace command

# This is just show the result after replacing that is not replace the word in the file. 
#sed 's/Kenny/KennyTwo/g' test.txt

#====================SO=====================

sed -i 's/Kenny/KennyTwo/g' test.txt #add the -i (let command "insert" to the file)

