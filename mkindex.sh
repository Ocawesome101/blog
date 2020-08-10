#!/bin/bash
# Simple script to generate an index.html

site="https://oz-craft.pickardayune.com/blog/pages"

echo "<!DOCTYPE html> <link rel=\"stylesheet\" href=\"https://oz-craft.pickardayune.com/blog/style.css\"> <html><title>Ocawesome101's Blog</title><body>" > index.html
cat base.txt >> index.html
echo "<br><br>" >> index.html
for file in $(ls pages | sort); do
  header=$(lua getheader.lua "pages/$file")
  echo "<a href=\"$site/$file\">$header</a><br>" >> index.html
done
echo '</body></html>' >> index.html
