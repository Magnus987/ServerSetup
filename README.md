# Ansible playbook/script for a quick setup on new linux servers.
- wrapper sh script to install ansible and start the playbook
- apt update && full-upgrade
- install btop, ufw, nano
- create new user with password
- block root ssh login
- set SSH key only auth 
- set authorised_keys
- enable unattended-upgrades
- restart sshd