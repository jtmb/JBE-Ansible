# JBE-Ansible

Your Inventory file (hosts) will have the connect information for ansible to use (SSH). Please set the correct IP in the hosts file and set the correct VARS in vars.yml/
 
MAKE SURE YOU SET YOUR VARS IN "vars.yml" and set the server IP in the hosts file, otherwise the ansible playbook will not work.

Run inventory hosts file localy :

         ansible-playbook -i hosts play.yml