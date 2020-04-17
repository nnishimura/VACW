# VACW - Vagrant based development environment for WordPress

All you need to do is `vagrant up` and you're ready to go.

VACW stands for Vagrant - Ansible - CentOS - Wordpress.

This repo contains Vagrantfile with ansible setup for provisioning a WordPress based server with self-signed ssl certificates, PHP 7.4, Mariadb, and nginx.


## Getting started

Follow [the official guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) and install ansible if you haven't.

```
vagrant up
```

This will start the VM, and run the provisioning playbook (on the first VM startup).
Visit http://192.168.33.11 and you should see the WordPress installation screen.


## Other options

```
vagrant provision
```

This will re-run the playbook against the existing VM. Use this to apply the changes in playbook.

```
ansible-playbook -i hosts playbook.yml -C
```

This will dry-run the playbook and won't affect the existing VM.


## Configuration

update `group_vars/all.yml` at your convenience.

## What's Installed

* CentOS8
* PHP 7.4
* MariaDB
* nginx

## Requires

* Vagrant 1.8.6 or later
* VirtualBox 5.1.6 or later
* Ansible 2.9.6 or later
