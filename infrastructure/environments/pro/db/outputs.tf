output "game_scores_dynamodb_arn" {
  value       = module.db.game_scores_arn
  description = "ARN of game-scores DynamoDB table"
}