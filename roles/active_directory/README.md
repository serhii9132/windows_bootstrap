### active_directory

Automates the installation of Active Directory (AD DS) services and the promotion of a Windows server to a domain controller, creating a new forest.

Role Variables
--------------
The role variables and their descriptions can be found [here](https://github.com/serhii9132/windows_bootstrap/blob/main/roles/active_directory/defaults/main.yaml)

Example Playbook
----------------
```yaml
- name: Common
  hosts: all
  gather_facts: true
  roles:
    - role: serhii9132.windows_bootstrap.active_directory
```