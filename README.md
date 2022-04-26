# ABOUT:

This playbook configures a single (or multiple) linux hosts with basic security standards and provisions a docker enviorement.

# REQUIREMENTS:

1. .dev container requires the " Remote Containers " VSCODE extension.
2. Your Inventory file (inventory.ini) will have the connect information for ansible to use (SSH). 
3.  Please set the correct IP in the inventiory.ini file and set the correct VARS in vars.yml - otherwise the ansible playbook will not work.

# Running Ansible code:

1. Open main.yml with your dev container.
2. Run playbook with inventory hosts file localy (from container or from folder where main.yml is located) :

         ansible-playbook -i inventory.ini main.yml
