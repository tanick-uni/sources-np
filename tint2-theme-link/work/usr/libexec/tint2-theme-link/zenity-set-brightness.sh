#!/bin/bash

icon="/usr/share/icons/Papirus/48x48/apps/brightnesssettings.svg"

case $LANG in
  ja*) title="輝度の調整" ; text="画面の輝度を設定します。" ;;
    *) title="Brightness" ; text="Set brightness level" ;;
esac

lvl=$(echo "($(light -G)+0.5)/1" | bc)

lvl=$( \
    zenity \
    --scale \
    --value="${lvl}" \
    --text="${text}" \
    --title="${title}" \
    --window-icon="${icon}" \
)

light -S ${lvl}
