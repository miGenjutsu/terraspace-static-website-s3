#----------------------------------------------#
# bucket-base: variables                       #
# ./app/modules/bucket-base/variables.tf       #
#----------------------------------------------#


variable "web_bucket_name" {
  description = "name of the s3 bucket"
  type        = string
}

variable "web_bucket_tag" {
  description = "tag of the s3 bucket"
  type        = string
}