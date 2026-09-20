### utilities

Installing the app via Chocolatey.
By default, the role installs:
```
- Notepad++
- Microsoft Visual C++ Redistributable for Visual Studio 2015-2026 14.51.36231
```

Role Variables
--------------
The role variables and their descriptions can be found [here](https://github.com/serhii9132/windows_bootstrap/blob/main/roles/utilities/defaults/main.yaml)

Example Playbook
----------------
```yaml
- name: Install applications
  roles:
    - serhii9132.windows_bootstrap.utilities
```