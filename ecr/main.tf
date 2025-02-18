resource "aws_ecr_repository" "my_repository" {
  name = "my-repository"
}

resource "aws_ecr_lifecycle_policy" "my_repository_policy" {
  repository = aws_ecr_repository.my_repository.name

  policy = <<EOF
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "Expire untagged images older than 30 days",
      "selection": {
        "tagStatus": "untagged",
        "countType": "sinceImagePushed",
        "countUnit": "days",
        "countNumber": 30
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
EOF
}
