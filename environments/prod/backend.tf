terraform {
  backend "s3" {
    bucket = "urch-terraform-state-prod"  # Different bucket!
    key    = "prod/terraform.tfstate"
    region = "eu-west-1"
  }
}