
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
- Step 10: git switch ec2
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
Step 2: ansible localhost -m ping
Step 3: ansible localhost -m shell -a"ls ~/"
Step 4: ansible localhost -m shell -a"mkdir -p ~/opt"
Step 5: ansible localhost -m shell -a"touch -p ~/opt"
