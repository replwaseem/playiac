variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "main-vpc"
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
  default     = "main-subnet"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
  default     = "main-ecs-cluster"
}

variable "s3_ui_bucket_name" {
  description = "Name of the S3 bucket for UI application"
  type        = string
  default     = "ui-application-bucket"
}

variable "s3_data_bucket_name" {
  description = "Name of the S3 bucket for data upload"
  type        = string
  default     = "data-upload-bucket"
}

variable "cloudfront_distribution_name" {
  description = "Name of the CloudFront distribution"
  type        = string
  default     = "main-cloudfront-distribution"
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "app-lb"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "ecs-proxy"
}

variable "cognito_user_pool_name" {
  description = "Name of the Cognito User Pool"
  type        = string
  default     = "user-pool"
}

variable "cognito_identity_pool_name" {
  description = "Name of the Cognito Identity Pool"
  type        = string
  default     = "identity-pool"
}

variable "rds_cluster_name" {
  description = "Name of the RDS Cluster"
  type        = string
  default     = "aurora-cluster"
}
