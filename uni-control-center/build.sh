#!/bin/bash

cd $(dirname "$0")
fakeroot dpkg-deb -b work uni-control-center_0.8_all.deb
