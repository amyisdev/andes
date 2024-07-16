# Jenkins Ansible

An opiniated Playbook to install Jenkins.

## Requirements

- Ansible ([Guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html))

  ```bash
  # Install pipx & ansible
  sudo apt update
  sudo apt install pipx
  pipx ensurepath
  pipx install --include-deps ansible
  ```

## Usage

Simply run `ansible-playbook playbook/<playbook>.yaml` to provision configuration.

## Misc

### Manual configurations

After a VM is provisioned, we still need to add a public key to authorized_keys for each VMs. We should find a way to automate it.
