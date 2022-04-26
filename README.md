# About:

This playbook aims to automate linux debian vm or machine provisioning with changing a few vars and one simple click to run.

## REQUIREMENTS:

1. .dev container requires the " Remote Containers " VSCODE extension. https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers


2. Your Inventory file (inventory.ini) will have the connect information for ansible to use (SSH). 

         [linux]
         172.24.136.29:22 #target server IP Address

         [linux:vars]
         ansible_user={{ssh_user}} 
         ansible_sudo_pass={{sudo_pass}} 
         ansible_password={{ssh_pass}}


3. Set the IP of the machine(s) in the inventiory.ini file and set the correct VARS in vars.yml - otherwise the ansible playbook will not work.

Mandatory VARS:

      # Linux Vars (mandatory)
      homedir:          # Sets home dir to your SSH user
      ssh_port:         # Sets config SSH port to change
      sudo_pass:        # Define sudo pass 
      ssh_pass:         # SSH pass (if same as sudo pass, you can always a variable example:  ssh_pass: {{sudo_pass}})
      ssh_user:         # SSH user name

-------------------------------

*Playbook task highlights:*

1. [Application Packages](https://github.com/jtmb/JBE-Ansible/blob/main/tasks/packages.yml)

2. [Install and configure Fail2ban, endlessSSH.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

3. [Docker app and official signed Key]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

4. [Change the default SSH port and restric connection to ssh key only.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_security.yml )

5. [Automated generation of SSH keys for .devcontainer, save to machine VAR and then place .pub key on target server.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_key_local.yml )

6. [Deploy docker container enviorment.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

-------------------------------

### Running Ansible code:

1. Build the .devcontainer with the remote containers vs code extension:

click ++> ![image](https://user-images.githubusercontent.com/86915618/165235835-12df7cb0-1a97-4c60-b5e3-4db6182efcdb.png)

![image](https://user-images.githubusercontent.com/86915618/165246233-2b5e646f-972e-4ddc-8069-d023ca5a8a48.png)


3. [devcontainer.json](https://github.com/jtmb/JBE-Ansible/blob/main/.devcontainer/devcontainer.json) will automaticaly run with inventory hosts file localy (from  inside container in workspace dir as root) :

         ansible-playbook -i inventory.ini main.yml
