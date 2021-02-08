# Sort Images with Hazel
 Exiftool combined with Hazel gives you the ability to work with the internal dates contained in a photograph's metadata. After a bit of trial and error, I was able to take an Exiftool example and modify it to do what I needed.

 ### The sample script from the Hazel forum uses ExifTool to rename photos.

```
exiftool -P -d '%Y%m%d' \
   '-filename<${FileModifyDate;}.%e' \
        '-filename<${GPSDateTime;}.%e' \
        '-filename<${MediaCreateDate;}.%e' \
        '-filename<${ModifyDate;}.%e' \
        '-filename<${DateTimeOriginal;}.%e' \
        "$1"
```

This applies one of several metadata dates as the new name for each photo.
The format is YearMonthDay.Extension

What I needed was to sort the photos into dated folders as below.
    2020
        01-Jan
        02-Feb
        03-Mar
        04-Apr
        05-May
        ...
    2021
        01-Jan
        02-Feb

So, I took the example and after a bit of trial and error, I came up with a working solution. If you compare the example above and my finished script, you should be able to develop your own sorting script. Or you can use it as is.

>There's also bash script that will do the same thing as the Hazel script, but requires a bit more setup.

### Here's the setup screen from Hazel
![image](Hazel-Sort-1)