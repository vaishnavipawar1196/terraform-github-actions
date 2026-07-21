terraform {
  backend "s3" {
    bucket         = "terraform-state-destroy-2026"
    key            = "terraform-github-actions/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
