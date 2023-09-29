#!/bin/bash

cd $(dirname "$0")
fakeroot dpkg-deb -b work uni-session_0.8_all.deb
