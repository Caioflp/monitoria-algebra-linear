#!/bin/bash 

# usage: 
# bash clean.sh DIR 

DIR=$1
# files with those extensions will be removed; usually, 
# they are generated during the compilation 
# (if you are using bibtex, you possibly want to insert 
# *.bbl and *.blg in this list) 
EXTENSIONS=("*.aux" "*.fdb_latexmk" "*.fls" "*.log" "*.synctex.gz" "*.out")   

if [ -h ${DIR} ]; then 
	echo The directory ${DIR} does not exist! 
else 
	for ext in ${EXTENSIONS[*]}; do 
		file=${DIR}/${ext} 
		if [ -e ${file} ]; then 
			rm ${DIR}/${ext} 
		fi    
	done 
	echo The directory ${DIR} is, now, clean!  
fi 
