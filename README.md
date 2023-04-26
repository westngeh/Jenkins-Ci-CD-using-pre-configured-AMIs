CI/CD Pipeline using Terraform and Pre-Configured AMIs
This project sets up a Jenkins-based CI/CD pipeline using Terraform and pre-configured AMI images for Jenkins, SonarQube, Nexus, and Tomcat. The Jenkins server was manually configured and integrated before the AMIs were created, and the entire pipeline is deployed using a private VPC.

Prerequisites
Before you can run this Terraform code, you'll need the following:

An AWS account with permissions to create resources.
The AWS CLI installed on your local machine.
Terraform installed on your local machine.
Access to the pre-configured AMI images for Jenkins, SonarQube, Nexus, and Tomcat.
How to Use
Clone this repository to your local machine.
Edit the variables.tf file to specify your AWS access key, secret key, region, and other variables as necessary.
Run terraform init to initialize the project.
Run terraform apply to create the resources.
The terraform apply command will create the following resources:

## An EC2 instance running the pre-configured Jenkins AMI.
## An EC2 instance running the pre-configured SonarQube AMI.
## An EC2 instance running the pre-configured Nexus AMI.
## An EC2 instance running the pre-configured Tomcat AMI.
An S3 bucket for Jenkins backup.
A VPC with the necessary subnets, route tables, and security groups.
Accessing the Pipeline
Once the resources have been created, you can access the Jenkins web interface by navigating to the Jenkins EC2 instance's public IP address in your web browser. The default Jenkins username and password are admin and password, respectively.

You can then configure your Jenkins pipeline as necessary and use the pre-configured tools for your CI/CD workflow.

Cleaning Up
To destroy the resources created by this Terraform code, run terraform destroy. This will remove all of the EC2 instances, S3 bucket, and VPC resources.

Disclaimer
This project is provided as-is without any warranties or guarantees. Please use at your own risk.
# test
