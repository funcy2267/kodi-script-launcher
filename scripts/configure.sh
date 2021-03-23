#!/bin/bash

FILE1='addon.xml'
FILE2='script.sh'
FILE3='launcher.py'
CONFIG='config.txt'

variable () { cat $CONFIG | grep $1 | cut -d "=" -f2- ; }

mkdir $(variable ADDON_ID)
cd $(variable ADDON_ID)
cp ../$CONFIG ./$CONFIG
../scripts/compose-xml.sh

if [ $(variable IMAGE_ICON) &> /dev/null ] ; then
	cd ..
	cp $(variable IMAGE_ICON) ./$(variable ADDON_ID)/icon.png
	cd $(variable ADDON_ID)
fi

if [ $(variable IMAGE_FANART) &> /dev/null ] ; then
	cd ..
	cp $(variable IMAGE_FANART) ./$(variable ADDON_ID)/fanart.jpg
	cd $(variable ADDON_ID)
fi

cp ../$FILE2 ./$FILE2
cp ../$FILE3 ./$FILE3
rm ./$CONFIG
