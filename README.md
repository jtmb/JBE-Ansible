# REQUIREMENTS:

1. .dev container requires the " Remote Containers " VSCODE extension. https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

   ![image](https://user-images.githubusercontent.com/86915618/165235835-12df7cb0-1a97-4c60-b5e3-4db6182efcdb.png)

3. Your Inventory file (inventory.ini) will have the connect information for ansible to use (SSH). 

   ![image](https://user-images.githubusercontent.com/86915618/165235962-a25c2493-1380-4688-80cc-78c7d8279c37.png)

5. Set the correct IP in the inventiory.ini file and set the correct VARS in vars.yml - otherwise the ansible playbook will not work.

Mandatory VARS:

   ![image](https://user-images.githubusercontent.com/86915618/165236730-7364eefb-f1c9-4fe2-9e9e-50f760466e6f.png)

-------------------------------

*About Playbook:*

1. Application Packages ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/packages.yml )

2. Install and configure Fail2ban, endlessSSH.

3. Docker app and official signed Key ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

4. Change the default SSH port and restric connection to ssh key only. ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_security.yml )

5. Automated generation of SSH keys for .devcontainer, save to machine VAR and then place .pub key on target server.  ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_key_local.yml )

6. Deploy docker container enviorment. ( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

-------------------------------

Running Ansible code:

1. Open main.yml with your dev container.
2. Run playbook with inventory hosts file localy (from container or from folder where main.yml is located) :

         ansible-playbook -i inventory.ini main.yml
