#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
wget http://snapshot.debian.org/archive/debian/20211016T084259Z/pool/main/j/jgmenu/jgmenu_4.4.0-1_amd64.deb
dpkg -x jgmenu_4.4.0-1_amd64.deb work
dpkg -e jgmenu_4.4.0-1_amd64.deb work/DEBIAN
rm -r work/usr/share/applications
sed -i 's/Version: 4.4.0-1/Version: 4.4.0-1+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
fakeroot dpkg-deb -b work jgmenu_4.4.0-1+uni1_amd64.deb
