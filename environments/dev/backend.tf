terraform {
  backend "s3" {
    bucket = "urch-terraform-state-dev"
    key    = "dev/terraform.tfstate"
    region = "eu-north-1"
  }
}