# Retrieves the information from the remote state file
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "b53-s3-bucket"
    key    = "vpc/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
   }
}