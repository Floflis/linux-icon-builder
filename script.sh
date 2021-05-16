#!/bin/bash

echo "Welcome to another awesome autistic art by Daniella Mesquita."

if [ ! -f icons/16x16 ]; then
    echo ""
    echo "It looks like its your first time using linux-icon-builder!"
    echo "Initializing..."
    mkdir icons
    mkdir icons/16x16
    mkdir icons/16x16@2x
    mkdir icons/24x24
    mkdir icons/24x24@2x
    mkdir icons/32x32
    mkdir icons/32x32@2x
    mkdir icons/48x48
    mkdir icons/48x48@2x
    mkdir icons/256x256
    mkdir icons/256x256@2x
fi

echo ""

echo "Bellow, please write the name.extension of the source image (if it isn't in this same folder, write the full path) file you want to convert into Linux icon."
echo "Minimum dimensions: 512x512"

echo -n "Please write the file path/name.extension:"
read imgname
if [ $(identify -ping -format '%w' $imgname) -ge 512 ]; then
    echo "$(identify -ping -format '%w' $imgname)"
fi
