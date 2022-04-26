# REQUIREMENTS:

1. .dev container requires the " Remote Containers " VSCODE extension.
2. Your Inventory file (inventory.ini) will have the connect information for ansible to use (SSH). 
3. Set the correct IP in the inventiory.ini file and set the correct VARS in vars.yml - otherwise the ansible playbook will not work.

Mandatory VARS:

         homedir: "/home/{{ssh_user}}" # Sets home dir to your SSH user (debian based)
         ssh_port: 2002/tcp # Sets config SSH port to change (change as necessary)
         sudo_pass: "samplepassword1!"  # Define sudo pass 
         ssh_pass: "samplepassword2!" # SSH pass you use to connect (if same as sudo pass, you can always a variable example:  ssh_pass: {{sudo_pass}})
         ssh_user: "user" # SSH user name

-------------------------------

*About Playbook:*

1. Application Packages ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/packages.yml )

2. Docker app and official signed Key ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

3. Install and configure Fail2ban, endlessSSH.

4. Change the default SSH port and restric connection to ssh key only. ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_security.yml )

5. Automated generation of SSH keys for .devcontainer, save to machine VAR and then place .pub key on target server.  ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_key_local.yml )

6. Deploy docker container enviorment. ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

-------------------------------

Running Ansible code:

1. Open main.yml with your dev container.
2. Run playbook with inventory hosts file localy (from container or from folder where main.yml is located) :

         ansible-playbook -i inventory.ini main.yml
