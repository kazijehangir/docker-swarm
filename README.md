# Docker Swarm

Repo for ansible scripts to bring up machine deployments.

docker-swarm/
├── ansible.cfg
├── inventory.ini
├── bootstrap.sh
├── setup-swarm.yml
├── portainer-stack.yml
└── vars/
    └── secrets.yml  <-- Encrypted with ansible-vault

## Commands

Bootstrap (only do this on the Swarm manager)

```bash
curl -fsSL https://gist.githubusercontent.com/raw/0432d8c9374b6847ed60673b9efca35d -o bootstrap-ansible.sh && chmod +x bootstrap-ansible.sh && ./bootstrap-ansible.sh
```

Run ansible manually:

```bash
ansible-playbook setup-swarm.yml
```
