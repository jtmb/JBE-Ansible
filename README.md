# JBE-Ansible

        # Ansible server deploy

            # Dowloads ansible
                sudo apt install ansible -y

            # CD to ansible DIR and edit
                nano /ect/ansible/hosts

            # Copy to hosts bottom of file

                [linux-servers]

                192.168.0.19
                192.168.0.17

                [linux:vars]

                ansible_user=ansible-user
                ansible_password=@nsibleU5er


        # Ansible user create
           sudo adduser ansible-user 
