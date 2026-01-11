#!/bin/bash
set -e

# 1. Ask for Vault Password once
read -s -p "Enter Ansible Vault Password: " VAULT_PASS
echo
echo "$VAULT_PASS" > ~/.ansible_vault_pass.txt
chmod 600 ~/.ansible_vault_pass.txt

# 2. Install minimal dependencies
sudo apt update && sudo apt install -y git ansible python3-pip

# 3. Clone Repo (Assumes you've added your Deploy Key to GitHub)
if [ ! -d "~/docker-swarm" ]; then
    git clone git@github.com:kazijehangir/docker-swarm.git ~/docker-swarm
fi

cd ~/docker-swarm
ansible-galaxy collection install community.docker

# 4. Run Playbook
ansible-playbook setup-swarm.yml