# Vagrant LAB

Build a Vagrant laboratory for testing purposes.

## Start

```bash
chmod +x up.sh
./up.sh
```

## Test Ansible

```bash
ansible vagrant -i inventory.ini -m ping
```

## Destroy

```bash
chmod +x destroy.sh
./destroy.sh
```
