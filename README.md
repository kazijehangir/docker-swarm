# Docker Swarm

Repo for ansible scripts to bring up machine deployments.

## Commands

Bootstrap (only do this on the Swarm manager)

```bash
curl -fsSL https://gist.githubusercontent.com/raw/0432d8c9374b6847ed60673b9efca35d -o bootstrap-ansible.sh && chmod +x bootstrap-ansible.sh && ./bootstrap-ansible.sh
```

Run ansible manually:

```bash
cd docker-swarm/
ansible-playbook setup-swarm.yml
```

## Adding a new node

On a device with Github access to push to <https://github.com/kazijehangir/docker-swarm.git>:

1. Edit docker-swarm/vars/secrets.yml to add the new node's IP address.

  ```bash
  cd docker-swarm/
  ansible-vault edit vars/secrets.yml
  ```

1. Edit docker-swarm/inventory.yml to add the new node under swarm_managers or swarm_workers.

1. Commit and push changes to github.

1. Go to a manager node and run the bootstrap command above.
