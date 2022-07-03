
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
########
- Step 1:  go to iam 
- Step 2: Click on the user & click on Add user 
- Step 3: Enter the name & select Access key - Programmatic access chk box \
- Step 4:  Click next 
- Step 5 : Attach existing policies directly
- Step 6 : AdministratorAccess select 
- Step 7: Click 2 time next button 
- Step 8: Copy the details 


DevOps

AKIAWLDQLIJPPB5C2R7J

oJBQPgogkw/iklKQv4kfHk4EmiVIVvN09sFmLB3R


- Step 9: Goto terminal and run this command 

```
aws configure

AWS Access Key ID [None]: AKIAWLDQLIJPPB5C2R7J
AWS Secret Access Key [None]: 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
Default region name [None]: us-east-1
Default output format [None]: json
varunmanikoutlo@ip-172-31-26-229:~/varun/terraform-ansible$ 

```

- Step 10: aws s3 ls 


- Step 1:  Clone the repo
- Step 2: git switch s3
- Step 3: Replace the bucket name with ur user name



######
# Ansible
- Step 1: ansible --version 
## Adhoc Command
- Step 2: ansible localhost -m ping 
- Step 3: ansible localhost -m shell -a"ls  ~/"
- Step 4: ansible localhost -m shell -a"mkdir -p  ~/opt"
- Step 5: ansible localhost -m shell -a"touch -p  ~/opt"
