# contrail-test-ansible
Ansible playbooks for contrail test purposes

playbooks/site1.yml : brings up kubernetes cluster v1.6.2 on hosts defined in inventory/my-inventory/hosts

playbooks/site2.yml : Installs kernel header files for Ubuntu 16.04/centos7 on all hosts in inventory/my-inventory/hosts

To run, update playbooks/inventory/my-inventory/hosts file first

cd playbooks ; ansible-playbook -i inventory/my-inventory/ site1.yml
