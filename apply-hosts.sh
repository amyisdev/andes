#!/usr/bin/env bash

the_ip=$(multipass.exe list --format=json | jq -r '.list[0].ipv4[0]')

# my ssh_config
sed -i "/Host jenkins-dev/,/User/ s/HostName [0-9.]\+/HostName ${the_ip}/" /home/amy/.ssh/config

# ansible inventory ssh_config
sed -i "/Host jump-host/,/User/ s/HostName [0-9.]\+/HostName ${the_ip}/" ./inventories/jenkins-dev/ssh_config
