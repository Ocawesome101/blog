#!/bin/bash
# Simple script to generate an index.html

site="https://oz-craft.pickardayune.com/blog"

echo "\<html\>\<title\>Ocawesome101\'s Blog\<\/title\>\<body style\=\"background-color\:\#000\;color\:\#fff\;font-family\:Courier\"\>" > index.html
for file in $(ls blog | sort); do
  header=$(lua getheader.lua $file)
  echo "<a href=\"$site/$file\">$header</a>" >> index.html
done
echo '\<\/html\>' >> index.html
