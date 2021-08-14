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
	#echo $line
	kv=($line)
	#echo ${kv[0]} =\> ${kv[1]}
	if [ ${kv[0]} == Package: ]
	then
		FILE=./_packages/${kv[1]}.md
		echo Creating $FILE...
		echo --- > $FILE
	fi
	echo ${kv[0],,} ${line//$kv[0]} >> $FILE

done < Packages