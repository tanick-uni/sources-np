#!/bin/bash

##Author: Yamato Tanikawa <tanick_developer@outlook.jp>
##License: MIT

cd $(dirname "$0")
apt download screenfetch=3.9.1-2
dpkg -x screenfetch_3.9.1-2_all.deb work
dpkg -e screenfetch_3.9.1-2_all.deb work/DEBIAN

cd work
mkdir usr/libexec
mv usr/bin/screenfetch usr/libexec/screenfetch
cat << 'EOT' > usr/bin/screenfetch
#!/bin/bash
distro=$(cat /etc/os-release | grep PRETTY_NAME= | cut -d \" -f 2)
/usr/libexec/screenfetch -D "${distro}" "$@"
EOT
chmod +x usr/bin/screenfetch
cd ..

sed -i 's/Version: 3.9.1-2/Version: 3.9.1-2+uni1/' work/DEBIAN/control
sed -i 's/Maintainer:.*/Maintainer: Yamato Tanikawa <tanick_developer@outlook.jp>/' work/DEBIAN/control
fakeroot dpkg-deb -b work screenfetch_3.9.1-2+uni1_all.deb
