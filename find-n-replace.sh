#!/bin/sh

old_str="$1"
new_str="$2"

if [ "$#" != 2 ] 
then
    echo "Parameter wrong: need 2 parameters!"
    echo "Usage: $0 old_str new_str"
    exit
fi

files=`grep "$old_str" * -rl`
echo $files

sed -i "s/$old_str/$new_str/g" $files
