#!/bin/bash

FILE=

while read line
do
	if [ "$line" == "" ] 
	then
		if [ "$FILE"!="" ]
		then
			echo --- >> $FILE
			echo Created $FILE
		fi
		continue
	fi
	line=$(echo $line|sed 's/.\///g')
	#echo $line
	kv=($line)
	#echo ${kv[0]} =\> ${kv[1]}
	if [ ${kv[0]} == Package: ]
	then
		FILE=./_apt/${kv[1]}.md
		echo Creating $FILE...
		echo --- > $FILE
	fi
	echo ${kv[0],,} ${kv[@]:1:99} >> $FILE

done < debian/Packages