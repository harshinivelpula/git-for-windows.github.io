#!/bin/bash

for files in *.log
do
   folderName=`echo $files | awk -F. '{print $1}'`;
   echo "Original file" $files;
   echo "File name without extension" $folderName;
   date=$(date +"%d%m%Y%H%M");
   echo "Final name of copied file" $date".log"
   printf "\n";
   if [ -d $folderName ]
   then
      rm -r $folderName;
   fi
   mkdir $folderName;
   cp $files $folderName/$files;
   mv $folderName/$files $folderName/$date.log;
done
