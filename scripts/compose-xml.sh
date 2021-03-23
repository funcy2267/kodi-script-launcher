#!/bin/bash

FILE='addon.xml'
CONFIG='config.txt'

variable () { cat $CONFIG | grep $1 | cut -d "=" -f2- ; }

touch $FILE
echo "<?xml version='1.0' encoding='UTF-8' standalone='yes'?>" | tee $FILE
echo "<addon id='$(variable ADDON_ID)' name='$(variable NAME)' version='$(variable VERSION)' provider-name='$(variable PROVIDER)'>" | tee -a $FILE
echo "<extension point='xbmc.python.script' library='launcher.py'>" | tee -a $FILE
echo "<provides>executable</provides>" | tee -a $FILE
echo "</extension>" | tee -a $FILE
echo "<extension point='xbmc.addon.metadata'>" | tee -a $FILE
echo "<summary lang='$(variable LANGUAGE)'>$(variable SUMMARY)</summary>" | tee -a $FILE
echo "<description lang='$(variable LANGUAGE)'>$(variable DESCRIPTION)</description>" | tee -a $FILE
echo "<platform>linux</platform>" | tee -a $FILE
echo "<language>$(variable LANGUAGE)</language>" | tee -a $FILE
echo "</extension>" | tee -a $FILE
echo "</addon>" | tee -a $FILE