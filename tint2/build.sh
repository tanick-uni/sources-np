#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
apt download tint2
dpkg -x tint2_16.7-1_amd64.deb work
dpkg -e tint2_16.7-1_amd64.deb work/DEBIAN
rm -r work/usr/share/applications
sed -i 's/Version: 16.7-1/Version: 16.7-1+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
fakeroot dpkg-deb -b work tint2_16.7-1+uni1_amd64.deb
