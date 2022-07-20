output "game_scores_arn" {
  value       = aws_sqs_queue.game_scores.arn
  description = "ARN of game-scores SQS"
}
