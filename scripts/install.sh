#!/bin/bash

ADDON_DATA='.kodi/addons'
CONFIG='config.txt'

variable () { cat $CONFIG | grep $1 | cut -d "=" -f2- ; }

unzip -o $(variable ADDON_ID)/$(variable NAME).zip -d ~/$ADDON_DATA