terraform {
  backend "s3" {
    bucket         = "suji-tf-state-22072003"
    key            = "dev/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-lock"
  }
}