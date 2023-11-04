terraform {
  backend "s3" {
    bucket         = "finall-project-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state"
  }
}


