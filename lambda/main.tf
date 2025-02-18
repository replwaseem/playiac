resource "aws_lambda_function" "proxy" {
  filename      = "lambda_function_payload.zip"
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_exec.arn
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  environment {
    variables = {
      SECRET_NAME = aws_secretsmanager_secret.my_secret.name
    }
  }
}
