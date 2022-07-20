output "game_scores_dynamodb_arn" {
  value       = module.db.game_scores_arn
  description = "ARN of game-scores DynamoDB table"
}

output "game_scores_sqs_arn" {
  value       = module.queue.game_scores_arn
  description = "ARN of game-scores SQS"
}

output "app_url" {
  value       = module.app.dns
  description = "App url"
}
