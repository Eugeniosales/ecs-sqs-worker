resource "aws_sqs_queue" "terraform_queue" {
  name                      = "ecs-worker-queue"
  delay_seconds             = 0
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = var.ENV
    Project     = var.ECS_SERVICE_NAME
  }
}
