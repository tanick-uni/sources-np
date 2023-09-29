#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
apt download gdebi
dpkg -x gdebi_0.9.5.7+nmu5_all.deb work
dpkg -e gdebi_0.9.5.7+nmu5_all.deb work/DEBIAN
sed -i 's/Version: 0.9.5.7+nmu5/Version: 0.9.5.7+nmu5+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
sed -i 's/gnome-icon-theme/papirus-icon-theme/' work/DEBIAN/control
fakeroot dpkg-deb -b work gdebi_0.9.5.7+nmu5+uni1_all.deb
