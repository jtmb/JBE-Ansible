# ABOUT:

This playbook configures a single (or multiple) linux hosts with basic security standards and provisions a docker enviorement:

         1. Application Packages ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/packages.yml )

         2. Docker app and official signed Key ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

         3. Install and configure Fail2ban, endlessSSH.

         4. Change the default SSH port and restric connection to ssh key only. ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_security.yml )

         5. Automated generation of SSH keys for .devcontainer, save to machine VAR and then place .pub key on target server.  ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_key_local.yml )

         6. Deploy docker container enviorment. ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )



# REQUIREMENTS:

1. .dev container requires the " Remote Containers " VSCODE extension.
2. Your Inventory file (inventory.ini) will have the connect information for ansible to use (SSH). 
3.  Please set the correct IP in the inventiory.ini file and set the correct VARS in vars.yml - otherwise the ansible playbook will not work.

# Running Ansible code:

1. Open main.yml with your dev container.
2. Run playbook with inventory hosts file localy (from container or from folder where main.yml is located) :

         ansible-playbook -i inventory.ini main.yml
