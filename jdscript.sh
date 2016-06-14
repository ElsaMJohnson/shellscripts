#!/bin/bash
# For picking out a Julian day between 2453400-2454999 in a list of 
# observatory simulation files

ls -1 qII* > flist
for file in $(cat flist)
      do 
        cat $file | grep -e "245[3][4-9][0-9][0-9]" -e "245[4][0-9][0-9][0-9]" $file > n$file
      done
