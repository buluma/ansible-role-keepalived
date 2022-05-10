# [keepalived](#keepalived)

Set up keepalived in Debian-like systems

|GitHub|GitLab|Quality|Downloads|Version|Issues|Pull Requests|
|------|------|-------|---------|-------|------|-------------|
|[![github](https://github.com/buluma/ansible-role-keepalived/workflows/Ansible%20Molecule/badge.svg)](https://github.com/buluma/ansible-role-keepalived/actions)|[![gitlab](https://gitlab.com/buluma/ansible-role-keepalived/badges/master/pipeline.svg)](https://gitlab.com/buluma/ansible-role-keepalived)|[![quality](https://img.shields.io/ansible/quality/59138)](https://galaxy.ansible.com/buluma/keepalived)|[![downloads](https://img.shields.io/ansible/role/d/59138)](https://galaxy.ansible.com/buluma/keepalived)|[![Version](https://img.shields.io/github/release/buluma/ansible-role-keepalived.svg)](https://github.com/buluma/ansible-role-keepalived/releases/)|[![Issues](https://img.shields.io/github/issues/buluma/ansible-role-keepalived.svg)](https://github.com/buluma/ansible-role-keepalived/issues/)|[![PullRequests](https://img.shields.io/github/issues-pr-closed-raw/buluma/ansible-role-keepalived.svg)](https://github.com/buluma/ansible-role-keepalived/pulls/)|

## [Example Playbook](#example-playbook)

This example is taken from `molecule/default/converge.yml` and is tested on each push, pull request and release.
```yaml
---
- name: Converge
  hosts: all
  become: yes
  gather_facts: yes

  roles:
    - role: buluma.keepalived
      keepalived_options:
        - name: log-detail
```

The machine needs to be prepared. In CI this is done using `molecule/default/prepare.yml`:
```yaml
---
- name: Prepare
  hosts: all
  gather_facts: no
  become: yes

  roles:
    - role: buluma.bootstrap
```


## [Role Variables](#role-variables)

The default values for the variables are set in `defaults/main.yml`:
```yaml
# defaults file
---
keepalived_install_method: git
keepalived_git_repo: https://github.com/acassen/keepalived.git
keepalived_version: v2.2.2
keepalived_install: []
keepalived_configure_options: []
keepalived_options: []

keepalived_ip_nonlocal_bind: '1'

keepalived_create_keepalived_script_user: false

keepalived_global_defs_notification_email:
  - 'root@localhost.localdomain'
keepalived_global_defs_notification_email_from: 'root@localhost.localdomain'
keepalived_global_defs_smtp_server: '127.0.0.1'
keepalived_global_defs_smtp_connect_timeout: 30

keepalived_vrrp_script_map: {}

keepalived_vrrp_scripts: {}
keepalived_vrrp_track_processes: {}

keepalived_vrrp_instances: {}
```

## [Requirements](#requirements)

- pip packages listed in [requirements.txt](https://github.com/buluma/ansible-role-keepalived/blob/main/requirements.txt).

## [Status of used roles](#status-of-requirements)

The following roles are used to prepare a system. You can prepare your system in another way.

| Requirement | GitHub | GitLab |
|-------------|--------|--------|
|[buluma.bootstrap](https://galaxy.ansible.com/buluma/bootstrap)|[![Build Status GitHub](https://github.com/buluma/ansible-role-bootstrap/workflows/Ansible%20Molecule/badge.svg)](https://github.com/buluma/ansible-role-bootstrap/actions)|[![Build Status GitLab ](https://gitlab.com/buluma/ansible-role-bootstrap/badges/main/pipeline.svg)](https://gitlab.com/buluma/ansible-role-bootstrap)|

## [Context](#context)

This role is a part of many compatible roles. Have a look at [the documentation of these roles](https://buluma.github.io/) for further information.

Here is an overview of related roles:

![dependencies](https://raw.githubusercontent.com/buluma/ansible-role-keepalived/png/requirements.png "Dependencies")

## [Compatibility](#compatibility)

This role has been tested on these [container images](https://hub.docker.com/u/buluma):

|container|tags|
|---------|----|
|ubuntu|xenial, bionic, focal|
|debian|jessie, stretch, buster|

The minimum version of Ansible required is 2.1, tests have been done to:

- The previous version.
- The current version.
- The development version.



If you find issues, please register them in [GitHub](https://github.com/buluma/ansible-role-keepalived/issues)

## [Changelog](#changelog)

[Role History](https://github.com/buluma/ansible-role-keepalived/blob/master/CHANGELOG.md)

## [License](#license)

Apache-2.0

## [Author Information](#author-information)

[Michael Buluma](https://buluma.github.io/)
