# Use this script as shown in the images for Hazel.
### Be sure to change out [YOUR DIRECTORY HERE] for the directory you wish to use.

```
exiftool -P -d '[YOUR DIRECTORY HERE]/%Y/%m-%b' \
    '-Directory<${FileModifyDate}' \
    '-Directory<${GPSDateTime}' \
    '-Directory<${CreateDate}' \
    '-Directory<${DateTimeOriginal}' \
    '-Directory<${ModifyDate}' \
    "$1"
```
