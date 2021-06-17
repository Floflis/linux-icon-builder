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
    mkdir icons/16x16/actions
    mkdir icons/16x16@2x/actions
    mkdir icons/24x24/actions
    mkdir icons/24x24@2x/actions
    mkdir icons/32x32/actions
    mkdir icons/32x32@2x/actions
    mkdir icons/48x48/actions
    mkdir icons/48x48@2x/actions
    mkdir icons/256x256/actions
    mkdir icons/256x256@2x/actions
    mkdir icons/16x16/categories
    mkdir icons/16x16@2x/categories
    mkdir icons/24x24/categories
    mkdir icons/24x24@2x/categories
    mkdir icons/32x32/categories
    mkdir icons/32x32@2x/categories
    mkdir icons/48x48/categories
    mkdir icons/48x48@2x/categories
    mkdir icons/256x256/categories
    mkdir icons/256x256@2x/categories
    mkdir icons/16x16/devices
    mkdir icons/16x16@2x/devices
    mkdir icons/24x24/devices
    mkdir icons/24x24@2x/devices
    mkdir icons/32x32/devices
    mkdir icons/32x32@2x/devices
    mkdir icons/48x48/devices
    mkdir icons/48x48@2x/devices
    mkdir icons/256x256/devices
    mkdir icons/256x256@2x/devices
    mkdir icons/16x16/emblems
    mkdir icons/16x16@2x/emblems
    mkdir icons/24x24/emblems
    mkdir icons/24x24@2x/emblems
    mkdir icons/32x32/emblems
    mkdir icons/32x32@2x/emblems
    mkdir icons/48x48/emblems
    mkdir icons/48x48@2x/emblems
    mkdir icons/256x256/emblems
    mkdir icons/256x256@2x/emblems
    mkdir icons/16x16/mimetypes
    mkdir icons/16x16@2x/mimetypes
    mkdir icons/24x24/mimetypes
    mkdir icons/24x24@2x/mimetypes
    mkdir icons/32x32/mimetypes
    mkdir icons/32x32@2x/mimetypes
    mkdir icons/48x48/mimetypes
    mkdir icons/48x48@2x/mimetypes
    mkdir icons/256x256/mimetypes
    mkdir icons/256x256@2x/mimetypes
    mkdir icons/16x16/places
    mkdir icons/16x16@2x/places
    mkdir icons/24x24/places
    mkdir icons/24x24@2x/places
    mkdir icons/32x32/places
    mkdir icons/32x32@2x/places
    mkdir icons/48x48/places
    mkdir icons/48x48@2x/places
    mkdir icons/256x256/places
    mkdir icons/256x256@2x/places
    mkdir icons/16x16/status
    mkdir icons/16x16@2x/status
    mkdir icons/24x24/status
    mkdir icons/24x24@2x/status
    mkdir icons/32x32/status
    mkdir icons/32x32@2x/status
    mkdir icons/48x48/status
    mkdir icons/48x48@2x/status
    mkdir icons/256x256/status
    mkdir icons/256x256@2x/status
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
