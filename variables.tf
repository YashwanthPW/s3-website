variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "github_owner" {
  description = "GitHub username"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "github_branch" {
  description = "GitHub repository branch"
  type        = string
  default     = "main"
}

variable "github_oauth_token" {
  description = "GitHub OAuth token"
  type        = string
  sensitive   = true
}

variable "artifact_bucket_name" {
  description = "S3 bucket for storing CodePipeline artifacts"
  type        = string
}
