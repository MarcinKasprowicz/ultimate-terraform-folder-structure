resource "aws_dynamodb_table" "game_scores" {
  name         = "game-scores"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "user-id"
  range_key    = "game-title"

  attribute {
    name = "user-id"
    type = "S"
  }

  attribute {
    name = "game-title"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}
