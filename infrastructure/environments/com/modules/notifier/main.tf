resource "aws_sns_topic" "game_scores" {
  name = "games-score"
}

resource "aws_sns_topic_policy" "default" {
  arn = aws_sns_topic.game_scores.arn

  policy = data.aws_iam_policy_document.sns_topic_policy.json
}

data "aws_iam_policy_document" "sns_topic_policy" {
  policy_id = "__default_policy_ID"

  statement {
    actions = ["SNS:Subscribe"]
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = var.allowed_aws_account_ids
    }
    resources = [aws_sns_topic.game_scores.arn]
    sid = "__default_statement_ID"
  }
}

