#----------------------------------------------#
# bucket-base: outputs                         #
# ./app/modules/bucket-base/outputs.tf         #
#----------------------------------------------#


output "website_endpoint" {
  description = "public url of this website"
  value       = aws_s3_bucket.web_bucket.arn
}