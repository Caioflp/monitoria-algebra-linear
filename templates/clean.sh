#!/bin/bash 
DIR=$1
EXTENSIONS=("*.aux" "*.fdb_latexmk" "*.fls" "*.log" "*.synctex.gz")   

if [ -h ${DIR} ]; then 
	echo The directory ${DIR} does not exist! 
else 
	for ext in ${EXTENSIONS[*]}; do 
		file=${DIR}/${ext} 
		if [ -e ${file} ]; then 
			rm ${DIR}/${ext} 
		fi    
	done 
	echo Cleaned the directory ${DIR}!  
fi 
