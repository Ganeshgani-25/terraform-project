variable "bucket_name" {
  description = "name of the bucket"
  type = string
}
variable "backup_bucket" {
  description = "name of the backup-bucket"
  type = bool
}
variable "environment" {
  description = "environment of the bucket"
  type = string

}
