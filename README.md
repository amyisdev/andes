# Andes (Ansible DevOps)

An opiniated Playbook to install DevOps tools.

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

Simply run `ansible-playbook -i <inventories path> playbook/<playbook>.yaml` to provision and `ansible-playbook -i <inventories path> playbook/<playbook>.yaml --tags=remove` to remove configuration.

## Misc

### Manual configurations

After a VM is provisioned, we still need to manually add public key to the VM & setup lxc. We should find a way to automate it.
