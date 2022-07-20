output "sns_game_scores_arn" {
  value       = module.notifier.sns_game_scores_arn
  description = "The ARN of game-scores SNS topic"
}
