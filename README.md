# Ansible Backup and Restore OS10 Project
Backup file from OS10 nodes and save locally and sync on GitHub</br>
Restore file from GitHub and push to OS10 nodes

Backup.sh is a script to launch BOTH local back-up and sync on your github repository

The Ansible Palybook (copyconfig.yml) is made to create automatic backup of all switches on local folder /config  
It save the file in .txt with date/time tag but also in jinja format under /templates

You can decide to use only the Ansible playbook and skip the script if github sync is not of inyterest.

The Ansible Playbook (pushconfig.yml) is made to push the jinja configuration to all OS10 switches 
This repository is coming with 2 jinja templates as example and can be "pushed" to OS10 nodes as first step. 
Please check if the configuration example is aligned to what is needed.

# How To Use it (backup)

1-
Install Git and clone the project

sudo apt update
sudo apt -y install git
git clone https://github.com/val3r1o/os10-backup-restore.git

2-
Create your own Github repository so you can sync on your own space
Change the name based on your github and project
Please check the file -> Create-Github-account.txt

3-
When ready run:
./backup.sh

All configurations are stored on this local folder:
/configs
/templates

# How To Use it (restore)

Run the Ansible playbook to push the configs under /templates (jinja template) into your OS10 node

This example uses the dellos.dellos-copy-config role to push the configuration file into the device

1-
ansible-playbook -i inventory pushconfig2.yml


# note

Please review https://github.com/val3r1o/os10-startup-ansible to create control node right way
