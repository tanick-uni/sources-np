#!/bin/bash

cd $(dirname "$0")
fakeroot dpkg-deb -b work uni-desktop_0.8_all.deb
