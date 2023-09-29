#!/bin/bash

if [ ! -e ~/.config/userdirs.dirs ]; then
    xdg-user-dirs-update --force
fi

case $LANG in
  ja*) /usr/libexec/uni-desktop/l10n-ja.sh ;;
esac

start-tint2 &
(sleep 1s && pcmanfm --desktop) &
(sleep 2s && nm-applet) &
(sleep 3s && blueberry-tray) &
(sleep 4s && start-jgmenu -d) &
(sleep 5s && package-update-indicator) &
/usr/libexec/uni-desktop/start-diodon.sh &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
