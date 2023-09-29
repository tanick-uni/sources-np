#!/bin/bash

cd $(dirname "$0")
fakeroot dpkg-deb -b work uni-desktop-jwm_0.8_all.deb
