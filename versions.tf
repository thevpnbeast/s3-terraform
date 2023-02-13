terraform {
  #############################################################
  ## AFTER RUNNING TERRAFORM APPLY (WITH LOCAL BACKEND)
  ## YOU WILL UNCOMMENT THIS CODE THEN RERUN TERRAFORM INIT
  ## TO SWITCH FROM LOCAL BACKEND TO REMOTE AWS BACKEND
  #############################################################
  # backend "local" {}
  backend "s3" {
    bucket = "thevpnbeast-terraform-states-1"
    key    = "states/s3.tfstate"
    region = "us-east-1"
    # dynamodb_table = "thevpnbeast-terraform-locks"
    encrypt = true
  }

  required_version = "~> 1.1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}