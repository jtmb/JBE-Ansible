# About:

This playbook aims to automate linux debian vm or machine provisioning with changing a few vars and one simple click to run.

## REQUIREMENTS:

1. .dev container requires the " Remote Containers " VSCODE extension. https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

2. Set the IP of the machine and password + ssh user in the VARS located vars.yml - otherwise the ansible playbook will not work.

Mandatory [VARS](https://github.com/jtmb/JBE-Ansible/blob/main/vars/vars.yml):

      # Linux Vars (mandatory)
      homedir:          # Sets home dir to your SSH user
      
      sudo_pass:        # Define sudo pass
      ssh_pass:         # SSH pass (if same as sudo pass, you can always a variable example:  ssh_pass: {{sudo_pass}})
      ssh_user:         # SSH user name
      target_server_ip  # Address of server you want to target (provision) with the playbook

-------------------------------

### Running Ansible code:

1. Build the .devcontainer with the remote containers vs code extension.

2. [devcontainer.json](https://github.com/jtmb/JBE-Ansible/blob/main/.devcontainer/devcontainer.json) will automaticaly run with inventory hosts file localy (from  inside container in workspace dir as root) :

         ansible-playbook -i inventory.ini main.yml

Your ansible playbook will now run when the container builds:

![image](https://user-images.githubusercontent.com/86915618/165248981-506fb62a-abc9-42cd-9f06-0fb31ae7008e.png)


-------------------------------


*Playbook task highlights:*

1. [Application Packages](https://github.com/jtmb/JBE-Ansible/blob/main/tasks/packages.yml)

2. [Install and configure Fail2ban, endlessSSH.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

3. [Docker app and official signed Key]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

4. [Change the default SSH port and restric connection to ssh key only.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_security.yml )

5. [Automated generation of SSH keys for .devcontainer, save to machine VAR and then place .pub key on target server.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_key_local.yml )

6. [Deploy docker container enviorment.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

-------------------------------
