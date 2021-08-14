#!/bin/bash

for a in $(ls *.pkg.tar.gz)
do
 repo-add cinnabar.db.tar.gz $a
done

ln -s cinnabar.db.tar.gz cinnabar