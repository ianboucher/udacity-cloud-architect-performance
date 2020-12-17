output "lambda_role_arn"{
    description = "ARN of Lambda Function IAM Role"
    value = aws_iam_role.iam_for_lambda.arn
}

output "lambda_logging_policy_arn"{
    description = "ARN of Lambda Function Logging Policy"
    value = aws_iam_policy.lambda_logging.arn
}

output "lambda_logroup_arn"{
    description = "ARN of Lambda Function CloudWatch Log Group"
    value = aws_cloudwatch_log_group.test_lambda.arn
}

output "lambda_arn" {
    description = "ARN of Lambda Function"
    value = aws_lambda_function.test_lambda.arn
}