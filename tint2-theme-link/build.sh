#!/bin/bash

cd $(dirname "$0")
fakeroot dpkg-deb -b work tint2-theme-link_0.8_all.deb
