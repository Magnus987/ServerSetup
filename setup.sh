#!/bin/bash
set -e

# Ansible installieren falls nicht vorhanden
if ! command -v ansible &> /dev/null; then
    echo "Installing Ansible..."
    sudo apt update
    sudo apt install -y ansible
fi

# Playbook ausführen
ansible-playbook playbook.yml
