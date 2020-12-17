## Project 2 - Design, Provision and Monitor AWS Infrastructure at Scale

The objectives of this project were to:
- Plan, design, provision, and monitor infrastructure in AWS using industry-standard and open source tools. 
- Demonstrate the skills required to optimize infrastructure for cost and performance. 
- Demonstrate the use of Terraform to provision and configure AWS services in a global configuration.

### Task 1 - Create AWS Architecture Schematics

**Part 1** - Plan and provision a cost-effective AWS infrastructure for a new social media application development project for 50,000 single-region users.

- Infrastructure in the following regions: us-east-1
- Users and Client machines
- One VPC
- Two Availability Zones
- Four Subnets (2 Public, 2 Private)
- A NAT Gateway
- A CloudFront distribution with an S3 bucket
- Web servers in the Public Subnets sized according to your usage estimates
- Application Servers in the Private Subnets sized according to your usage estimates
- DB Servers in the Private Subnets
- Web Servers Load Balanced and Autoscaled
- Application Servers Load Balanced and Autoscaled
- A Master DB in AZ1 with a read replica in AZ2

**Part 2** - plan a SERVERLESS architecture schematic for a new application development project. The project requires the following AWS infrastructure and services.

- A user and client machine
- AWS Route 53
- A CloudFront Distribution
- AWS Cognito
- AWS Lambda
- API Gateway
- DynamoDB
- S3 Storage

### Task 2 - Calculate Infrastructure Costs

- Estimate the cost to run the AWS services from the Part 1 web application diagram for 1 month
- Modify the above services to meet a monthly budget of $6,500
- Modify the above services once more to meet a budge of $18,000 to $20,000 with the aim of increasing redundancy and performance

### Task 3 Configure Permissions

- Configure minimum password requirements for IAM users
- Create groups and users with permissions to monitor CloudTrail and AWS Billing
- Create a CloudTrail and monitor activity on the AWS account for a short period

### Task 4 - Set Up Cost Monitoring

- Enable billing alarms notification to be sent on the account
- Create a new billing alarm with a $5 threshold
- Set-up a notification and ensure that an email alert is sent when the alarm is triggered

### Task 5 - Use Terraform to Provision AWS Infrastructure

- Provision 4x t2.micro and 2x m4.large EC2 instances, attached to an exising VPC and public subnet
- Provision a Lambda Function with along with required IAM role, CloudWatch log group and policy to allow the function to log to CW

### Task 6 - Destroy the Infrastructure using Terraform

- Tear down all EC2 instances created above
- Teak down Lambda Function and related resources created above
