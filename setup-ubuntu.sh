#!/usr/bin/env bash

sudo apt-get install python3-pip python3-distutils software-properties-common

pip3 install --user -r ./requirements.txt

NEEDED_PATH="${HOME}/.local/bin"

if [[ ${PATH} =~ ${NEEDED_PATH} ]]
then
  echo "${HOME}/.local/bin is in PATH"
  ansible-playbook -K local-system-ubuntu.yml
else
  echo "${HOME}/.local/bin is not in PATH"
  echo "Add ${HOME}/.local/bin to your environment PATH var to run ansible in future."
  PATH="${PATH}:${HOME}/.local/bin" ansible-playbook -K local-system-ubuntu.yml
fi

if [ $? != 0 ]
then
  echo "Ansible failed with error, check the run log."
else
  echo "Have a good day."
fi

