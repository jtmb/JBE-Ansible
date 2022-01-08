# JBE-Ansible

Run inventory hosts file localy :
        
         ansible-playbook -i hosts play.yml

Add Ansible user account:

        add user acc 'sudo useradd ansible-user; passwd ansible-user'
       
Passwordless SSH auth for sudo jenkins builds:
        
        https://askubuntu.com/questions/147241/execute-sudo-without-password
