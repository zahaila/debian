#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get install -y $(cat /tmp/*packages | tr "\n" " ")

cat /tmp/*packages > /usr/lib/src/installed_packages

