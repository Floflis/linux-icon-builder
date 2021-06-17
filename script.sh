#!/bin/bash

echo "Welcome to another awesome autistic art by Daniella Mesquita."

if [ ! -e icons ]; then
    echo ""
    echo "It looks like its your first time using linux-icon-builder! 🤗"
    echo "Initializing... 🧚"
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
    mkdir icons/16x16/apps
    mkdir icons/16x16@2x/apps
    mkdir icons/24x24/apps
    mkdir icons/24x24@2x/apps
    mkdir icons/32x32/apps
    mkdir icons/32x32@2x/apps
    mkdir icons/48x48/apps
    mkdir icons/48x48@2x/apps
    mkdir icons/256x256/apps
    mkdir icons/256x256@2x/apps
fi

echo ""

echo "Bellow, please write the name.extension of the source image (if it isn't in this same folder, write the full path) file you want to convert into Linux icon."
echo "Minimum dimensions: 512x512 🧗"

echo -n "Please write the file path/name.extension:"
read imgname
echo "Icon categories available: actions, apps, categories, devices, emblems, mimetypes, places, status"
echo -n "Please write the icon category you want:"
read iconcategory
if [ $(identify -ping -format '%w' $imgname) -ge 512 ]; then
    echo "Confirmed, it meets the minimum dimensions. File dimensions: $(identify -ping -format '%w' $imgname)x$(identify -ping -format '%w' $imgname) 🙌"
    echo -n "Please write the name.extension you want for your icon:"
    read applyname
    echo "Ok, working... 👩‍🏭"
    convert $imgname    -resize 16x16  icons/16x16/$iconcategory/$applyname
    convert $imgname    -resize 32x32  icons/16x16@2x/$iconcategory/$applyname
    convert $imgname    -resize 32x32  icons/32x32/$iconcategory/$applyname
    convert $imgname    -resize 24x24  icons/24x24/$iconcategory/$applyname
    convert $imgname    -resize 48x48  icons/24x24@2x/$iconcategory/$applyname
    convert $imgname    -resize 48x48  icons/48x48/$iconcategory/$applyname
    convert $imgname    -resize 32x32  icons/32x32/$iconcategory/$applyname
    convert $imgname    -resize 64x64  icons/32x32@2x/$iconcategory/$applyname
    convert $imgname    -resize 96x96  icons/48x48@2x/$iconcategory/$applyname
    convert $imgname    -resize 256x256  icons/256x256/$iconcategory/$applyname
    convert $imgname    -resize 512x512  icons/256x256@2x/$iconcategory/$applyname
    echo "Done! Kisses 😘"
    echo "Tip: copy the content of the 'icons' folder to the icon pack you want to patch. After done, pls don't forget to delete the 'icons' folder 💁‍♀️"
    else
        echo "Oh, error 🤷 Please review how you've wrote/copied the file name. Usage example video: https://youtu.be/0fiKLsBVmEk 📺"
fi
