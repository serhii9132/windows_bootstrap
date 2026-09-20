### active_directory

Adds new users to an existing Active Directory domain

Role Variables
--------------
The role variables and their descriptions can be found [here](https://github.com/serhii9132/windows_bootstrap/blob/main/roles/active_directory/defaults/main.yaml)

Example Playbook
----------------
```yaml
- name: Common
  hosts: all
  roles:
    - role: serhii9132.windows_bootstrap.active_directory
```