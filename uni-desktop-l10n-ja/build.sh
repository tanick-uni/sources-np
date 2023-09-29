#!/bin/bash

cd $(dirname "$0")
fakeroot dpkg-deb -b work uni-desktop-l10n-ja_0.8_all.deb
