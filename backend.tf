terraform {
  backend "s3" {
    bucket = "1566-terraform-labs"
    key    = "global/s3/terraform.tfstate"
    region = "ap-south-1"
  }
}