resource "aws_instance" "Instance" {
  ami = var.ami_id
  instance_type = var.instance_type

  tags = {
    name = "${var.environment}-ec2_instance"
    Environment = var.environment
  }
}

