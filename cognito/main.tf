resource "aws_cognito_user_pool" "user_pool" {
  name = var.cognito_user_pool_name
}

resource "aws_cognito_identity_pool" "identity_pool" {
  identity_pool_name               = var.cognito_identity_pool_name
  allow_unauthenticated_identities = false
  cognito_identity_providers {
    client_id     = aws_cognito_user_pool_client.client.id
    provider_name = aws_cognito_user_pool.user_pool.endpoint
  }
}
