#!/bin/bash

#Original Exif command line directive. Works 
#exiftool '-Directory<CreateDate' -d [YOUR DIRECTORY HERE]/%Y/%m-%b /Users/Big-O/Pictures/Sort-Temp 

exiftool -P -d '[YOUR DIRECTORY HERE]/%Y/%m-%b' \
    '-Directory<${CreateDate}' \
    '-Directory<${DateTimeOriginal}' \
    '-Directory<${ModifyDate}' \
    '-Directory<${FileModifyDate}' \
    $@
