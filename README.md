# Ansible

Ansible seems like the right tool for a number of jobs when it comes to system automation.

This repo is to hold my Ansible playbooks and for learning and experimentation.

## Setup for local Ubuntu based machine

### Install Ansible

``` bash
./setup.sh
```

It may be required to add the local bin path to the bashrc file to access Ansible.

``` bash
# Adding extra Path exports
export PATH=$PATH:$HOME/.local/bin/
```

### Run Ansible

``` bash
ansible-playbook -K local-system.yml
```
