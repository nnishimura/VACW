# VACW
## Vagrant based development environment for WordPress

All you need to do is `vagrant up` and you're ready to go.

VACW stands for Vagrant - Ansible - CentOS - Wordpress.

This repo contains Vagrantfile with ansible setup for provisioning a WordPress based server with self-signed ssl certificates, PHP 7.3, Mariadb, and nginx.


## Getting started

Follow [the official guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) and install ansible if you haven't.

```
vagrant up
```

This will start the VM, and run the provisioning playbook (on the first VM startup).

```
vagrant provision
```

This will re-run the playbook against the existing VM.

## Configuration

update `vars/default.yml` at your convenience.

## What's Installed

* CentOS8
* PHP 7.3
* MariaDB
* nginx

## Requires

* Vagrant 1.8.6 or later
* VirtualBox 5.1.6 or later
* Ansible 2.9.6 or later
