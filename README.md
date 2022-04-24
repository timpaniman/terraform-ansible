# Use the below commands on Ubuntu system to install ansible software
sudo apt-get install -f
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

# AWS Terraform Infra Creation
- Step 1: Clone the repo
- git clone https://github.com/manikcloud/terraform-ansible
- Step 2: Launch your AWS lab in SL 
- https://faculty.lms.simplilearn.com/courses/4040/-PG-DO---DevOps-Certification-Training/practice-labs
- Step 3: Goto IAM & Create a user 
- https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-east-1#/home
- Step 4: Add the Admin Access to this user and 
- Step 5: Download the key file 
- Step 6: Run aws configure 
- Step 7: put the keys

- Step 8: run this command ``` aws s3 ls
- Step 9: terraform --version
- step 10: git switch s3
- Step 11: terraform init 
- Step 12: terraform plan
- Step 13: terraform apply 
- Step 14: Goto AWS console and Verify the se bucket 
- Step 15: terraform validate
- step 16: terraform fmt
- Step 17: terraform destroy and yes 


# EC2 Creation
- Step 1: switchto ec2 branch 
- step 2: terrafrom init
- step 3: terraform plan 
- step 4: terraform apply 
- Step 5: Verify your vm's
## Adhoc command for Remote VM's
- Step 2: ansible localhost -m ping
- Step 3: ansible localhost -m shell -a"ls ~/"
- Step 4: ansible localhost -m shell -a"mkdir -p ~/opt"
- Step 5: ansible localhost -m shell -a"touch -p ~/opt"
- Step 6: git switch ansible 
- Step 7: git pull 
- Step 8: chmod 400 deployer  
- Step 9: ansible all -i '3.80.114.94,' -m ping -u ec2-user --private-key=./deployer
- Step 10: ansible all -i '3.80.114.94,' -m shell -a"ls -l /opt/a.txt" -u ec2-user --private-key=./deployer
## file module 
- Step 11: ansible all -i '3.80.114.94,' -m file -a"dest=/opt/a.txt"   -u ec2-user --private-key=./deployer -b  
## copy module            
- Step 12: ansible all -i '3.80.114.94,' -m copy -a"src=./index.html dest=/home/ec2-user/a.txt"   -u ec2-user --private-key=./deployer -b
## Package management 
- Step 13: ansible all -i '3.80.114.94,' -m yum -a"name=git state=present" -u ec2-user --private-key=./deployer -b
- Step 14: ansible all -i '3.80.114.94,' -m yum -a"name=git state=absent" -u ec2-user --private-key=./deployer -b

## inventory file 
- Step 15: copy ip address of Linux NODE 
- Step 16: replace you line no. 1 in inventory file 
- Step 17 : ansible node-1 -m ping 

## Ansible playbook 
- Step 18: ansible-playbook httpd.yaml

# Ansible Role 
2. Create Ansible Role
3. Create Ansible tasks
4. Create Ansible template
5. Create Ansible variable
6. Remove unwanted directory
7. Create Ansible role playbook


- Step 2: Create Ansible Role
- 2.1 Once we have our Ansible environment ready, next create a project. I will create a 
new project base to demonstrate Ansible roles example
mkdir base
- 2.2 To create an ansible role, use ansible-galaxy init <role_name> to create the role 
directory structure
2.3 Let’s create the role in our <project>/roles directory i.e. ~/base/roles/motd
cd base
mkdir roles
cd roles
- ansible-galaxy init Web-role
2.4 You can use the ls command to list the ansible role directory structure
cd Web-role
ls
- Step 3: Create Ansible Tasks
3.1 Now update the /etc/motd file using ansible playbook roles. Create tasks to use the main.yml file present inside the tasks folder.
cd tasks
ls
vi main.yml

- 3.2 Enter the below code
---
# tasks file for Web-role
- name: copy Web-role file
  template:
     src: templates/Web-role.j2
     dest: /etc/Web-role
     owner: root
     group: root
     mode: 0444

- Step 4: Create Ansible Template
4.1 Create the template content which will be used to update /etc/motd in our ansible roles examples. I will create a new template file under the templates directory using some variables:

cd ..
cd templates
vi Web-role.j2
 
4.2 Enter the below details:
Welcome to {{ ansible_hostname }}

This file was created on {{ ansible_date_time.date }}
Go away if you have no business being here

Contact {{ system_manager }} if anything is wrong
Step 5: Create Ansible Variable

5.1 We will use the defaults folder to define custom variables which are used in our template file templates/Web-role.j2
cd ..
cd defaults
ls
vi main.yml
 
5.2 Enter the below details in the file:
---
# defaults file for Web-role
system_manager: admin@golinuxcloud.com
 

- Step 6: Remove unwanted directories (Optional)

6.1 This step is completely optional. In this ansible roles example, we will not use other directories so we are deleting them. After deleting the additional directories you can use the tree command to list the directory structure of motd roles
cd ..
rm -rf handlers tests vars
- Step 7: Create an ansible-role playbook
7.1 Now after you create an ansible role structure, we need a playbook file that will deploy the role to our managed hosts. I will create my playbook file Web-role-role.yml under base project directory
cd ..
cd ..
sudo vi Web-role-role.yml

 

7.2 Enter the below code in the file

---
- name: use Web-role role playbook
  hosts: webservers
  user: ansible
  become: true

  roles:
    - role: Web-role
      system_manager: admin@golinuxcloud.com


 
- Step 8: Deploy Ansible role playbook
8.1 Execute the below command:
ansible-playbook Web-role-role.yml


