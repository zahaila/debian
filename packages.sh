#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get install -y $(cat /tmp/*packages | tr "\n" " ")
