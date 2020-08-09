#!/bin/bash
# Simple script to generate an index.html

site="https://oz-craft.pickardayune.com/blog"

echo "<html><title>Ocawesome101's Blog</title><body style="background-color:\#000\;color:\#fff\;font-family:Courier">" > index.html
cat base.txt >> index.html
echo "<br><br>" >> index.html
for file in $(ls blog | sort); do
  header=$(lua getheader.lua "blog/$file")
  echo "<a href="$site/$file">$header</a><br>" >> index.html
done
echo '</body></html>' >> index.html
