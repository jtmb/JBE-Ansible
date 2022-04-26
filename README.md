# JBE-Ansible

.dev container requires the " Remote Containers " VSCODE extension.

Your Inventory file (inventory.ini) will have the connect information for ansible to use (SSH). Please set the correct IP in the inventiory.ini file and set the correct VARS in vars.yml.
 
MAKE SURE YOU SET YOUR VARS IN "vars.yml" and set the server IP in the hosts file, otherwise the ansible playbook will not work.

Run playbook with inventory hosts file localy (from container or from folder where main.yml is located) :

         ansible-playbook -i inventory.ini main.yml