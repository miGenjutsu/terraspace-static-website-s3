#----------------------------------------------#
# bucket-base: main                            #
# ./app/modules/bucket-base/main.tf            #
#----------------------------------------------#


resource "aws_s3_bucket" "web_bucket" {
  bucket = var.web_bucket_name

  tags = {
    Name = var.web_bucket_tag
  }
}

resource "aws_s3_bucket_website_configuration" "web_config" {
  bucket = aws_s3_bucket.web_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "s3_bucket_acl" {
  bucket = aws_s3_bucket.web_bucket.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "${aws_s3_bucket.web_bucket.arn}/*"
    }
  ]
}
EOF
}