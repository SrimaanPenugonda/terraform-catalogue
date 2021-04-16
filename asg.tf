module "asg" {
  source          = "git::https://github.com/SrimaanPenugonda/terraform-asg.git"
  COMPONENT       = var.COMPONENT
  ENV             = var.ENV
  INSTANCE_TYPE   = var.INSTANCE_TYPE
  bucket          = var.bucket //pass the bucket name to access the VPC state file
  region          = var.region
  PORT            = 8080
  HEALTH          = "/health"
} // calling other module(terraform-asg) as asg module also pass the variables to it.

