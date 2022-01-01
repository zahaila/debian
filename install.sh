#!/bin/bash

/tmp/pre-config.sh
/tmp/packages.sh
/tmp/config.sh

apt-get clean -y
apt-get autoclean -y
apt-get autoremove -y

rm -rf /var/cache/debconf/*-old
rm -rf /var/lib/apt/lists/*
rm -rf /usr/share/doc/*
rm -rf /var/log/*