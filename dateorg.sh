#!/bin/bash

# This version copies everything older than the last 24 hours. -mtime +0 vs -mtime 0
BASE_DIR=YOUR DIRECTORY HERE
MOVE_DIR=YOUR SECOND DIRECTORY HERE

## Find those files that are older than a month
find "$BASE_DIR" -maxdepth 5 -mtime 0 -type f -name "*" |
 while IFS= read -r file; do
    ## Get the file's modification year
    year="$(date -d "$(stat -c %y "$file")" +%Y)"
    ## Get the file's modification month
    month="$(date -d "$(stat -c %y "$file")" +%b)"
    day="$(date -d "$(stat -c %y "$file")" +%d)"

    ## Create the directories if they don't exist. The -p flag
    ## makes 'mkdir' create the parent directories as needed so
    ## you don't need to create $year explicitly.
#    [[ ! -d "$BASE_DIR/$year/$month/$day" ]] && mkdir -p "$BASE_DIR/$year/$month/$day";
    [[ ! -d "$MOVE_DIR/$year/$month/$day" ]] && mkdir -p "$MOVE_DIR/$year/$month/$day";
    ## Move the file
#    mv "$file" "$BASE_DIR/$year/$month/$day"
    mv "$file" "$MOVE_DIR/$year/$month/$day"
done