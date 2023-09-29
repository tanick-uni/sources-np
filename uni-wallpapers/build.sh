#!/bin/bash

cd $(dirname "$0")
fakeroot dpkg-deb -b work uni-wallpapers_0.7_all.deb
