# contrail-test-ansible
Ansible playbooks for contrail test purposes

playbooks/site1.yml : brings up kubernetes cluster based on inventory/my-inventory/hosts

playbooks/site2.yml : Installs kernel header files for Ubuntu 16.04/centos7 

To run, update playbooks/inventory/my-inventory/hosts file first

cd playbooks ; ansible-playbook -i inventory/my-inventory/ site1.yml
