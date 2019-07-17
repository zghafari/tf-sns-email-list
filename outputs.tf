output "arn" {
  value       = aws_cloudformation_stack.sns_topic.outputs["ARN"]
  description = "Email SNS topic ARN"
}

