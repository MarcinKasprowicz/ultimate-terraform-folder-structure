output "sns_game_scores_arn" {
    value = aws_sns_topic.game_scores.arn
    description = "The ARN of the SNS topic"
}
