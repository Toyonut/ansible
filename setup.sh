#!/usr/bin/env bash
ANSIBLE_VER="2.7.8"

apt-get install python-pip python3-pip software-properties-common

pip3 install ansible==$ANSIBLE_VER --user


