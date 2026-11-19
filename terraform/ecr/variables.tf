variable "name" {
  description = "Prefix for the ECR repository name."
  type        = string
}

variable "kms_key_arn" {
  description = "KMS key ARN for image encryption."
  type        = string
}
