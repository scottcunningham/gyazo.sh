#!/bin/bash
fn=`tempfile`.png
gnome-screenshot -a -f $fn
url=$(curl -0 -X POST -F imagedata=@"$fn" http://img.roflol.pw/upload 2>/dev/null)
echo $url
xdg-open $url
rm $fn
