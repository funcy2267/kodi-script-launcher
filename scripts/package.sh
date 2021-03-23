#!/bin/bash

CONFIG='config.txt'

variable () { cat $CONFIG | grep $1 | cut -d "=" -f2- ; }

zip -r -0 tmp.zip $(variable ADDON_ID)
mv tmp.zip $(variable ADDON_ID)/$(variable NAME).zip