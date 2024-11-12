
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  tags={
    Name = var.bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "backup_bucket" {
  count = var.backup_bucket ? 1 : 0
  bucket = "${lower(var.environment)}-backup-236948-bucket-2604"

  tags = {
    Name = "${lower(var.environment)}-backup-236948-bucket-2604"
    Environment = var.environment
  }
}