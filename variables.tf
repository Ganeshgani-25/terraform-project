variable "ami_id" {
  description = "AMI ID of the instance"
  type = string
}

variable "environment" {
  description = "deployment environment"
  type = string
}
variable "instance_type" {
  description = "type of the instance"
  type = map(string)

  default = {
    "Prod" = "t2.micro"
    "Dev" = "t2.micro"
  }
}

variable "bucket_name" { 
  description = "name of the bucket"
  type = map(string)

  default = {
    "Prod" = "prod-main-bucket-14252604"
    "Dev" = "dev-main-bucket-14250426"
  }
}

variable "backup_bucket" {
  description = "flag to create backup bucket"
  type = bool
  default = false
}