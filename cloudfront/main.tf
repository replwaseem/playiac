resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = aws_s3_bucket.ui_bucket.bucket_regional_domain_name
    origin_id   = "S3-ui-application-bucket"
  }
  origin {
    domain_name = aws_lb.app_lb.dns_name
    origin_id   = "ALB-origin"
  }
  enabled = true
  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "S3-ui-application-bucket"
    viewer_protocol_policy = "redirect-to-https"
  }
  ordered_cache_behavior {
    path_pattern           = "/api/*"
    allowed_methods        = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "ALB-origin"
    viewer_protocol_policy = "redirect-to-https"
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
