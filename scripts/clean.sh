#!/bin/bash

CONFIG='config.txt'

variable () { cat $CONFIG | grep $1 | cut -d "=" -f2- ; }

rm -rf $(variable ADDON_ID)