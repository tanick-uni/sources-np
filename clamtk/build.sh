#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
apt download clamtk
dpkg -x clamtk_6.03-3_all.deb work
dpkg -e clamtk_6.03-3_all.deb work/DEBIAN

cd work
rm -r usr/share/applications/clamtk-kde.desktop
git apply ../fix-locale-time.patch
git apply ../scan-mail-yes.patch
cd ..

sed -i 's/Version: 6.03-3/Version: 6.03-3+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
sed -i 's/gnome-icon-theme/papirus-icon-theme/' work/DEBIAN/control
fakeroot dpkg-deb -b work clamtk_6.03-3+uni1_all.deb
