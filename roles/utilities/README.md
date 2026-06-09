### utilities

Installing the app via Chocolatey.
By default, the role installs:
```
- Notepad++
- Microsoft Visual C++ Redistributable for Visual Studio 2015-2026 14.51.36231
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
    <td>utilities_extra</td>
    <td>A list of additional packages</td>
    <td>list</td>
    <td>[]</td>
  </tr>
  <tr>
    <td>utilities_is_install_chrome</td>
    <td>Force install Google Chrome (stable)</td>
    <td>bool</td>
    <td>false</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Install applications
  gather_facts: true
  roles:
    - serhii9132.windows_bootstrap.utilities
```