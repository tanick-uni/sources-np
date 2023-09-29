#!/bin/bash

if [ "$(gsettings get org.freedesktop.ibus.panel xkb-icon-rgba)" != '#ffffff' ]; then
    gsettings set org.freedesktop.ibus.panel xkb-icon-rgba '#ffffff'
fi
if [ "$(gsettings get org.freedesktop.ibus.general.hotkey triggers)" != "['Zenkaku_Hankaku']" ];then
    gsettings set org.freedesktop.ibus.general.hotkey triggers "['Zenkaku_Hankaku']"
    ibus restart
fi
