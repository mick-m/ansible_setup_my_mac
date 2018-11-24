ansible_setup_my_mac
=========

Ansible playbook for setting up my Mac with preferred packages and configuration..

Requirements
------------

Created using Ansible 2.7.10. Tested with MacOS High Sierra.

Role Variables
--------------

N/A

Dependencies
------------

N/A

Running This Playbook
----------------

Tested locally. To setup a new Mac:
run `./deploy.sh` to first install dependencies (Brew, CL tools, Xcode, pip, and Ansible.)

When above is complete, you can run this Playbook:
- Place it in your roles directory - e.g. `~/.ansible/roles/`
- Then from `~/.ansible/roles/ansible_setup_my_mac/`, run `$ ansible-playbook main.yml`

`main.yml` (configured to be run locally & to ignore errors for subsequent re-runs - e.g. package already exists):
```
---
- hosts: localhost
  ignore_errors: yes
  user: mick
  connection: local

  vars_files:
    - vars/main.yml

  roles:
    - ansible_setup_my_mac
```
License
-------

BSD

Author Information
------------------

Mick McCarthy.
