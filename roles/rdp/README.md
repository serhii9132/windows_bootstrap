## rdp

The role configures the RDP service:
```
- service activation via registry
- configures a custom port for incoming connections
- сreates firewall rules and adds an IP whitelist for connections (role fails if variable {{ rdp_list_allowed_ips }} is empty)
```

Role Variables
--------------
<table>
<thead>
  <tr>
    <th>Name</th>
    <th>Comment</th>
    <th>Type</th>
    <th>Default Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>rdp_port</td>
    <td>Custom port for connection</td>
    <td>int</td>
    <td>33889</td>
  </tr>
  </tr>
    <tr>
    <td>rdp_list_allowed_ips</td>
    <td>Whitelist of IP for connection</td>
    <td>list</td>
    <td>[]</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure RDP service
  hosts: all
  roles:
    - role: serhii9132.windows_bootstrap.rdp
```