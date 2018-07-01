# Setup for local Ubuntu based machine

## Install Ansible

``` bash
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```

## Run Ansible

`
ansible-playbook -K ubuntu_local.yml
`