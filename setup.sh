#!/bin/bash
set -e

# Install ansible if not already there
if ! command -v ansible &> /dev/null; then
    echo "Installing Ansible..."
    sudo apt update
    sudo apt install -y ansible
fi

# execute playbook
ansible-playbook playbook.yml
