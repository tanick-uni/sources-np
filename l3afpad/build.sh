#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
wget http://snapshot.debian.org/archive/debian/20220209T214738Z/pool/main/l/l3afpad/l3afpad_0.8.18.1.11-3_amd64.deb
dpkg -x l3afpad_0.8.18.1.11-3_amd64.deb work
dpkg -e l3afpad_0.8.18.1.11-3_amd64.deb work/DEBIAN
sed -i 's/Version: 0.8.18.1.11-3/Version: 0.8.18.1.11-3+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
fakeroot dpkg-deb -b work l3afpad_0.8.18.1.11-3+uni1_amd64.deb
