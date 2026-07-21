# AWS Infrastructure Automation using Terraform & GitHub Actions CI/CD

![Terraform](https://img.shields.io/badge/Terraform-v1.5+-623CE4?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonaws)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI/CD-2088FF?logo=githubactions)
![License](https://img.shields.io/badge/License-MIT-green)

## 📖 Overview

This project demonstrates **Infrastructure as Code (IaC)** by provisioning AWS resources using **Terraform** and automating deployments with **GitHub Actions**.

The CI/CD pipeline automatically validates, plans, and can optionally deploy infrastructure whenever changes are pushed to the GitHub repository.

---

## 🚀 Features

- Infrastructure as Code (IaC) with Terraform
- Automated CI/CD using GitHub Actions
- EC2 Instance Provisioning
- Security Group Configuration
- Automatic Terraform Formatting
- Terraform Validation
- Terraform Plan Generation
- Secure AWS Authentication using GitHub Secrets
- Production-ready project structure
- Easy to extend with VPC, Load Balancer, Auto Scaling, and RDS

---

## 🏗️ Architecture

```text
                Git Push
                    │
                    ▼
           GitHub Repository
                    │
                    ▼
            GitHub Actions Runner
                    │
        ┌───────────┼───────────┐
        │           │           │
        ▼           ▼           ▼
terraform fmt  terraform validate terraform plan
                    │
                    ▼
            terraform apply
                    │
                    ▼
             AWS Infrastructure
        ┌──────────────────────────┐
        │ Security Group           │
        │ EC2 Instance             │
        │ AWS Resources            │
        └──────────────────────────┘
```

---

## 🛠️ Technologies Used

- Terraform
- AWS EC2
- AWS IAM
- AWS Security Groups
- GitHub Actions
- Git
- YAML
- Amazon Linux 2023

---

## 📂 Project Structure

```text
terraform-github-actions/
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── provider.tf
├── versions.tf
├── variables.tf
├── outputs.tf
├── main.tf
├── terraform.tfvars
├── .gitignore
├── README.md
└── screenshots/
```

---

## ☁️ AWS Resources

This project creates:

- EC2 Instance
- Security Group
- Latest Amazon Linux AMI

Future enhancements:

- VPC
- Public Subnet
- Internet Gateway
- Application Load Balancer
- Auto Scaling Group
- RDS MySQL
- S3 Remote Backend

---

## 📋 Prerequisites

Install the following before running the project:

- Terraform
- AWS CLI
- Git
- Visual Studio Code
- AWS Account
- GitHub Account

---

## 🔑 Configure AWS CLI

```bash
aws configure
```

Provide:

```text
AWS Access Key ID
AWS Secret Access Key
Default Region: ap-south-1
Output Format: json
```

---

## 📥 Clone Repository

```bash
git clone https://github.com/<your-github-username>/terraform-github-actions.git

cd terraform-github-actions
```

---

## ⚙️ Terraform Commands

### Initialize Terraform

```bash
terraform init
```

### Format Configuration

```bash
terraform fmt
```

### Validate Configuration

```bash
terraform validate
```

### Generate Execution Plan

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

## 🔄 GitHub Actions Workflow

The workflow automatically runs whenever code is pushed to the **main** branch.

Pipeline includes:

- Checkout Repository
- Setup Terraform
- Configure AWS Credentials
- Terraform Init
- Terraform Format
- Terraform Validate
- Terraform Plan
- Terraform Apply *(optional)*

Workflow File:

```text
.github/workflows/terraform.yml
```

---

## 🔐 GitHub Secrets

Create the following repository secrets:

| Secret | Description |
|---------|-------------|
| AWS_ACCESS_KEY_ID | AWS Access Key |
| AWS_SECRET_ACCESS_KEY | AWS Secret Key |

Navigate to:

```text
Repository
   ↓
Settings
   ↓
Secrets and Variables
   ↓
Actions
   ↓
New Repository Secret
```

---

## 📊 Example Output

```text
Apply complete!

Outputs:

instance_id = i-0123456789abcdef

public_ip = 13.xxx.xxx.xxx
```

---

## 📸 Screenshots

Create a folder named **screenshots** and add images like:

```text
screenshots/
├── github-actions-success.png
├── terraform-plan.png
├── terraform-apply.png
├── aws-ec2-console.png
└── security-group.png
```

---

## 📈 Skills Demonstrated

- Infrastructure as Code (IaC)
- Terraform
- AWS Cloud
- GitHub Actions
- CI/CD Automation
- EC2 Deployment
- AWS Security Groups
- IAM
- Git
- DevOps Practices

---

## 🚀 Future Improvements

- Custom VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- Application Load Balancer
- Auto Scaling Group
- Amazon RDS
- Terraform Modules
- Remote State using Amazon S3
- Separate Dev and Prod Environments

---

## 🎯 Learning Outcomes

By completing this project, you will gain hands-on experience with:

- Infrastructure as Code (IaC)
- Terraform workflow
- AWS resource provisioning
- GitHub Actions automation
- Secure credential management
- CI/CD best practices

---

## 💼 Resume Description

**AWS Infrastructure Automation using Terraform & GitHub Actions CI/CD**

- Provisioned AWS infrastructure using Terraform following Infrastructure as Code (IaC) principles.
- Automated Terraform validation, planning, and deployment with GitHub Actions.
- Configured secure AWS authentication using GitHub Secrets.
- Deployed EC2 instances and Security Groups using reusable Terraform configuration.
- Integrated Git-based version control with CI/CD automation for infrastructure deployment.

---

## 👩‍💻 Author

**Vaishnavi Pawar**

- AWS Certified Developer – Associate
- Web Developer
- Cloud & DevOps Enthusiast

---

## 📄 License

This project is licensed under the **MIT License**.

---

⭐ If you found this project helpful, consider giving it a **Star** on GitHub!
