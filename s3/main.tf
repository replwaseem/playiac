resource "aws_s3_bucket" "ui_bucket" {
  bucket = var.s3_ui_bucket_name
  acl    = "private"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = "*",
      Action = "s3:GetObject",
      Resource = "arn:aws:s3:::${var.s3_ui_bucket_name}/*",
      Condition = {
        StringEquals = {
          "aws:Referer" = "${aws_cloudfront_distribution.cdn.id}"
        }
      }
    }]
  })
}

resource "aws_s3_bucket" "data_bucket" {
  bucket = var.s3_data_bucket_name
  acl    = "private"
}
