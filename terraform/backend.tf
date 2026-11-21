# Replace the bucket name before a real init (it must already exist).
terraform {
  backend "s3" {
    bucket         = "REPLACE_ME-clouddevops-tfstate"
    key            = "clouddevops/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "clouddevops-tf-lock"
    encrypt        = true
  }
}
