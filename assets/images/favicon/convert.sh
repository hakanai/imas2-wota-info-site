#!/bin/bash

/usr/bin/convert favicon.svg -resize 32x32 ../../../favicon.ico

/usr/bin/convert -background none -resize 32x32 favicon.svg favicon-32px.png
/usr/bin/convert -background none -resize 180x180 favicon.svg favicon-180px.png
/usr/bin/convert -background none -resize 192x192 favicon.svg favicon-192px.png
/usr/bin/convert -background none -resize 512x512 favicon.svg favicon-512px.png

/usr/bin/convert -background none -resize 400x400 -bordercolor none -border 56x56+0+0 favicon.svg favicon-512px-maskable.png
