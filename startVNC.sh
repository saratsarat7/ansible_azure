#!/bin/bash
ansible-playbook ./Linode/linode_cleanup.yml
ansible-playbook ./Linode/linode.yml
sleep 180s
ansible-playbook ./Linode/vnc.yml -i ./inventory.yml
./Linode/forwardPort.sh
export VNC_PASSWORD="hello123"
vncviewer localhost:3333 -Maximize
# FullScreen