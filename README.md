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
to communicate with any service provider terraform will need a plugin that will behind the scene will communicate with service provider (in our case it is AWS cloud ), this plugins can be installed via code in this file : use_provider.tf


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
