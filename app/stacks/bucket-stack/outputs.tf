#----------------------------------------------#
# bucket-stack: outputs                        #
# ./app/modules/bucket-stack/outputs.tf        #
#----------------------------------------------#

output "website_endpoint" {
  description = "public url of this website"
  value       = module.bucket-base.website_endpoint
}