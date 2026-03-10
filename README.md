\# AWS Infrastructure with Terraform



This project demonstrates a professional DevOps workflow using \*\*Terraform\*\* to manage AWS resources. 



\## Architecture Features

\* \*\*Remote State:\*\* State files are stored securely in an Amazon S3 bucket.

\* \*\*State Locking:\*\* Uses Amazon DynamoDB to prevent concurrent executions.

\* \*\*Infrastructure:\*\* Deploys a versioned S3 bucket for application assets.



\## How to Use

1\. Initialize: `terraform init`

2\. Preview: `terraform plan`

3\. Deploy: `terraform apply`

