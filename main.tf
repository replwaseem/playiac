provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./vpc"
}

module "subnet" {
  source = "./subnet"
}

module "security_group" {
  source = "./security_group"
}

module "iam" {
  source = "./iam"
}

module "ecs" {
  source = "./ecs"
}

module "s3" {
  source = "./s3"
}

module "cloudfront" {
  source = "./cloudfront"
}

module "alb" {
  source = "./alb"
}

module "lambda" {
  source = "./lambda"
}

module "cognito" {
  source = "./cognito"
}

module "rds" {
  source = "./rds"
}

module "ecr" {
  source = "./ecr"
}
