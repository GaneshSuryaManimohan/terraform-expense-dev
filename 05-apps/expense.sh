#!/bin/bash
#by default user data will get sudo access
dnf install ansible -y
cd /tmp
git clone https://github.com/GaneshSuryaManimohan/practice-ansible-roles.git
cd practice-ansible-roles
ansible-playbook main.yml -e component=backend -e mysql_root_password=ExpenseApp1
ansible-playbook main.yml -e component=frontend