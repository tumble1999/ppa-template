#!/bin/bash

NAME=cinnabar
PPA=.db.tar.gz
EXT=.pkg.tar.zst


if [ "$(cat /etc/os-release | grep ^ID | sed 's/ID=//g')" != "arch" ]
then
	sudo docker build . -t cinnabar-ppa
	sudo docker run --rm cinnabar-ppa tar -cC /app/ppa . | tar -xC .
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

ln -s $NAME$PPA $NAME

if [ "$1"=="docker" ]
then
	mkdir ppa
	cp {Packages,$NAME,$NAME$PPA} ppa
fi