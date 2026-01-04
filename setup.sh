#!/bin/bash
set -e

# Install ansible if not already there
if ! command -v ansible &> /dev/null; then
    echo "Installing Ansible..."
    sudo apt update
    sudo apt install -y ansible
fi

if ! command -v netaddr &> /dev/null; then
    echo "Installing netaddr..."
    sudo apt update
    sudo apt install -y python3-netaddr
fi

# install role for playbook
ansible-galaxy install nusenu.relayor
# execute playbook
ansible-playbook playbook.yml
