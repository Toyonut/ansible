#!/usr/bin/env bash

pip3 install --user -r ./requirements.txt

ansible-playbook -K local-system.yml