#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
apt download qt5ct
dpkg -x qt5ct_1.1-1+b2_amd64.deb work
dpkg -e qt5ct_1.1-1+b2_amd64.deb work/DEBIAN
rm -r work/usr/share/applications
sed -i 's/Version: 1.1-1+b2/Version: 1.1-1+b2+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
fakeroot dpkg-deb -b work qt5ct_1.1-1+b2+uni1_amd64.deb
