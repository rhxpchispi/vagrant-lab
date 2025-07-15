# Vagrant LAB

Build a Vagrant laboratory for testing purposes, mainly for Ansible.

## Requirements

This lab is made for Linux and requires a public-private key pair to connect via SSH to the created machines.

```bash
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen
```

In order to work on Windows, the Vagrantfiles would require some modifications.

## Start

```bash
vagrant up
```

## Test Ansible

```bash
ansible vagrant -i inventory.ini -m ping
```

## Stop

```bash
vagrant halt
```

## Destroy

```bash
vagrant destroy -f
```

# Web Servers

For installing Nginx on the web server group, you can use the following command:

```bash
ansible-playbook -i inventory.ini playbook-nginx.yml
```

## Links

- http://192.168.56.101
- http://192.168.56.103

## ToDo

- Adapt for Windows
