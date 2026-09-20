## rdp

The role configures the RDP service:
```
- service activation via registry
- configures a custom port for incoming connections
- сreates firewall rules and adds an IP whitelist for connections (role fails if variable {{ rdp_list_allowed_ips }} is empty)
```

Role Variables
--------------
The role variables and their descriptions can be found [here](https://github.com/serhii9132/windows_bootstrap/blob/main/roles/rdp/defaults/main.yaml)

Example Playbook
----------------
```yaml
- name: Configure RDP service
  hosts: all
  roles:
    - role: serhii9132.windows_bootstrap.rdp
```