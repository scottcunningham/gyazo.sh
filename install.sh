#!/bin/bash
if [ "$UID" -ne "0" ] ; then
    echo "Run me as root!"
    exit -1
fi;
cp gyazo.sh /usr/bin/gyazo
cp gyazo-gif.sh /usr/bin/gyazo-gif
cp gyazo.desktop gyazo-gif.desktop /usr/share/applications
mkdir -p /usr/share/icons/gyazo
cp gyazo.svg /usr/share/icons/gyazo/icon.svg
cp gyazo-gif.svg /usr/share/icons/gyazo/icon-gif.svg
