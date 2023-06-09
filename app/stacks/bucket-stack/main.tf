#----------------------------------------------#
# bucket-stack: main                           #
# ./app/modules/bucket-stack/main.tf           #
#----------------------------------------------#

module "bucket-base" {
  source = "../../modules/bucket-base"

  web_bucket_name = var.web_bucket_name
  web_bucket_tag  = var.web_bucket_tag
}
