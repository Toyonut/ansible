#!/usr/bin/env bash

pip3 install --user -r ./requirements.txt

ansible-playbook -K local-system-fedora.yml

if [ $? != 0 ]
then
  echo "You may need to add \"$HOME/.local/bin\" to your PATH to run ansible."
else
  echo "Have a good day."
fi
