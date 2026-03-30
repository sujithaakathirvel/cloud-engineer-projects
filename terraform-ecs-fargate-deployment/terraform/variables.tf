variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  default     = "ecs-flask-app"
}