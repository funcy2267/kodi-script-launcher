#!/bin/bash

ADDON_DATA='.kodi/addons'
CONFIG='config.txt'

variable () { cat $CONFIG | grep $1 | cut -d "=" -f2- ; }

rm -rf ~/$ADDON_DATA/$(variable ADDON_ID)