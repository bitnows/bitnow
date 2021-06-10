
Debian
====================
This directory contains files used to package bitnowd/bitnow-qt
for Debian-based Linux systems. If you compile bitnowd/bitnow-qt yourself, there are some useful files here.

## bitnow: URI support ##


bitnow-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitnow-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitnowqt binary to `/usr/bin`
and the `../../share/pixmaps/bitnow128.png` to `/usr/share/pixmaps`

bitnow-qt.protocol (KDE)
