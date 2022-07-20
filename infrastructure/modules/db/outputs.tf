output "game_scores_arn" {
  value       = aws_dynamodb_table.game_scores.arn
  description = "ARN of game-scores DynamoDB table"
}
