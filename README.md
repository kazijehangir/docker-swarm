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
curl -sSL https://gist.githubusercontent.com/raw/0432d8c9374b6847ed60673b9efca35d | bash
```

Run ansible manually:

```bash
ansible-playbook setup-swarm.yml
```
