#!/usr/bin/env bash

sudo dnf install python3-pip -y
pip3 install --user -r ./requirements.txt

NEEDED_PATH="${HOME}/.local/bin"

if [[ ${PATH} =~ ${NEEDED_PATH} ]]
then
  echo "${HOME}/.local/bin is in PATH"
  ansible-playbook -K local-system-fedora.yml
else
  echo "${HOME}/.local/bin is not in PATH"
  echo "Add ${HOME}/.local/bin to your environment PATH var to run ansible in future."
  PATH="${PATH}:${HOME}/.local/bin" ansible-playbook -K local-system-fedora.yml
fi

if [ $? != 0 ]
then
  echo "You may need to add \"$HOME/.local/bin\" to your PATH to run ansible."
else
  echo "Have a good day."
fi
