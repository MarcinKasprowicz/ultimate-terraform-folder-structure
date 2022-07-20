output "game_scores_dynamodb_arn" {
  value       = module.deployment.game_scores_dynamodb_arn
  description = "ARN of game-scores DynamoDB table"
}

output "game_scores_sqs_arn" {
  value       = module.deployment.game_scores_sqs_arn
  description = "ARN of game-scores SQS"
}

output "app_url" {
  value       = module.deployment.app_url
  description = "App url"
}
