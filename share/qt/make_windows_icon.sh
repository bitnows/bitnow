#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/bitnow.png
ICON_DST=../../src/qt/res/icons/bitnow.ico
convert ${ICON_SRC} -resize 16x16 bitnow-16.png
convert ${ICON_SRC} -resize 32x32 bitnow-32.png
convert ${ICON_SRC} -resize 48x48 bitnow-48.png
convert bitnow-16.png bitnow-32.png bitnow-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/bitnow_testnet.png
ICON_DST=../../src/qt/res/icons/bitnow_testnet.ico
convert ${ICON_SRC} -resize 16x16 bitnow-16.png
convert ${ICON_SRC} -resize 32x32 bitnow-32.png
convert ${ICON_SRC} -resize 48x48 bitnow-48.png
convert bitnow-16.png bitnow-32.png bitnow-48.png ${ICON_DST}
rm bitnow-16.png bitnow-32.png bitnow-48.png
