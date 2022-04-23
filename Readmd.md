
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