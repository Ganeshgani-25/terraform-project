provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./module/ec2_instance"
  ami_id = var.ami_id
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
  environment = var.environment
}
module "s3_buckets" {
  source = "./module/s3"
  bucket_name = lookup(var.bucket_name, terraform.workspace, "Prod-dev-bucket1425")
  backup_bucket = var.environment == "Prod"? true:false
  environment = var.environment
}





