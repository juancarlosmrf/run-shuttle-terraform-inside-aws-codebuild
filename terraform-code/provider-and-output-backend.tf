provider "aws" {
#  shared_credentials_file  = "${var.cred-file}" # we don't use this in AWS CodeBuild
  profile    = "${var.profile}"
  region     = "${var.region}"
}

/* NOTE: THIS SYNTAX IS NOT WORKING !!! */
/*
terraform {
  backend "s3" {
    bucket = "${var.prefix}.${var.region}.terraform-state-nagra"
    key    = "${var.prefix}/terraform.tfstate"
    region = "${var.region}"
  }
}
*/

# This will be done by the script in the buildspec.yml (CodeBuild)
#terraform {
#  backend "s3" {
#    bucket = "$datapart.$region.terraform-state-nagra"
#    key    = "$applicationname/terraform.tfstate"
#    region = "$region"
#  }
#}

