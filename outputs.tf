output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "s3_ui_bucket_name" {
  value = aws_s3_bucket.ui_bucket.bucket
}

output "s3_data_bucket_name" {
  value = aws_s3_bucket.data_bucket.bucket
}

output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.cdn.id
}

output "alb_name" {
  value = aws_lb.app_lb.name
}

output "lambda_function_name" {
  value = aws_lambda_function.proxy.function_name
}

output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.user_pool.id
}

output "cognito_identity_pool_id" {
  value = aws_cognito_identity_pool.identity_pool.id
}

output "rds_cluster_id" {
  value = aws_rds_cluster.aurora.id
}

output "ecr_repository_name" {
  value = aws_ecr_repository.my_repository.name
}
