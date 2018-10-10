variable "region" {
  #default = "eu-central-1" # Frankfurt
  #default = "us-west-2" #Oregon
  #default = "us-east-1" # Virginia
  default = "eu-west-1"
  description = "The AWS region where you want deploy your resources"
}

variable "prefix" {
    default = "shuttleapp1"
    description = "The prefix used to build the elements"
}

variable "profile" {
  default = "default"
}
