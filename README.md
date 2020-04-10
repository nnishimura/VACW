# Vagrant-wordpress

This repo contains Vagrantfile with ansible setup for provisioning a WordPress based server with ssl certificates (provided free via Let's encrypt), PHP 7.3, Mariadb, and nginx.


## Getting started

```
vagrant up
```

This will start the VM, and run the provisioning playbook (on the first VM startup).


```
vagrant provision
```

This will re-run the playbook against the existing VM.

## Run ansible task

```
ansible-playbook -i hosts -u root playbook.yml
```

## Reference

https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-wordpress-with-lamp-on-ubuntu-18-04
