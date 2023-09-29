#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
apt download im-config
dpkg -x im-config_0.46-1+deb11u1_all.deb work
dpkg -e im-config_0.46-1+deb11u1_all.deb work/DEBIAN
rm -r work/usr/share/applications
sed -i 's/Version: 0.46-1+deb11u1/Version: 0.46-1+deb11u1+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
fakeroot dpkg-deb -b work im-config_0.46-1+deb11u1+uni1_all.deb
