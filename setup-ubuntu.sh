#!/usr/bin/env bash

sudo apt-get install python3-pip python3-distutils software-properties-common

pip3 install --user -r ./requirements.txt

ansible-playbook -K local-system.yml
