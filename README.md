# Terraform

### What is Terraform:
Terraform is a tool to manage entire lifecycle of infrastructure using Infrastructure as Code.

Here I will be managing infrastucture on AWS cloud via Terraform.

You can Download Terraform via this link : https://www.terraform.io/downloads

Tf == Terraform

### Terraform Registry:
Terraform registry is list of all infrastructure service providers for which terraform provides the plugins to manage their infrastructure as a code.

https://registry.terraform.io/

### Use Terraform Provider:
to communicate with any service provider terraform will need a plugin that will behind the scene will communicate with service provider (in our case it is AWS cloud ), this plugins can be installed via code in this file : basics/use_provider.tf


## Working steps:
To manage instrasture terraform follows some steps in a code , which helps it to achive the required infrastructure.

1. firsti step involve Tf plugin, it helps to communicate with AWS.
2. Second step in to Login AWS account, so it will allow us to manage infrastucture.
3. Now terraform will use service and implement infrasture as defined in a code. Here we are using CLI so instead of username and password we will be needing access_key and secreat_key from AWS to login.

### Terraform Commands:

#### terraform init 
This command will initialize your terraform working directory containing terraform configuration files.

#### terraform validate 
It check our configuration file code and verify it syntactically, whether it is correct or not. 

#### terraform plan 
The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. Also all the variable shown by this command can be used in our code to more optimize and make code more flixible.

#### terraform apply
This command will implement the code over the infrastrure and stup everything as stated.

## Tf code for AWS Services
inside the folder /EC2 :
1. code for launching ec2 instance via Tf.
2. creating ebs volume
3. using private key for instance
4. connection and provisioning with launch instance (setup of httpd web server)
5. attaching ebs volume with ec2 instance
6. attaching security group to an instance
7. creating snapshot using volume
8. Creating AMI using Snapshots
