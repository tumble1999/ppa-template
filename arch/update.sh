#!/bin/bash

NAME=PPA_NAME
PPA=.db.tar.gz
EXT=.pkg.tar.zst

rm ${NAME} Packages ${NAME}${PPA}

if [ "$(cat /etc/os-release | grep ^ID | sed 's/ID=//g')" != "arch" ]
then
	sudo docker build . -t ${NAME}-ppa
	sudo docker run --rm ${NAME}-ppa tar -cC /app/ppa . | tar -xC .
	#ln -s $NAME$PPA $NAME
	exit
fi

if [ -f Packages ]
then
	rm Packages
fi

for a in $(ls *$EXT)
do
pacman -Qip $a >>Packages
repo-add $NAME$PPA $a
done


if [ "$1"=="docker" ]
then
	rm -rf ppa
	ls
	mkdir ppa
	cp {Packages,${NAME}.*} ppa
#else
	#ln -s $NAME$PPA $NAME
fi