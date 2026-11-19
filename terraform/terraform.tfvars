# AWS Configuration
aws_region         = "ap-southeast-2"
availability_zones = ["ap-southeast-2a", "ap-southeast-2b"]

# Project Configuration
project_name = "blue-green-dep-app"

# VPC Configuration
vpc_cidr = "10.0.0.0/16"

# ECS Task Definition Configuration
task_definition_cpu          = 256
task_definition_memory       = 512
task_definition_network_mode = "awsvpc"

# Auto Scaling Group Configuration
asg_ec2_ami_name      = "/aws/service/ecs/optimized-ami/amazon-linux-2023/recommended/image_id"
asg_ec2_instance_type = "m7i-flex.large"
asg_desired_capacity  = 2
asg_max_size          = 4
asg_min_size          = 2

# ECS Service Configuration
desired_count  = 2
container_port = 3000

# GitHub Configuration (CodeConnections; the codestar-connections ARN prefix still works)
github_connection_arn = "arn:aws:codeconnections:ap-southeast-2:448774597228:connection/39d46c0c-22d2-4f80-90f0-b8247da2c28a"
github_owner          = "latecoder126"
github_repo           = "terraform-aws-ecs-blue-green"

# Deployment engine: "codedeploy" (default) or "ecs" for ECS native blue/green
deployment_engine       = "codedeploy"
ecs_deployment_strategy = "CANARY"
canary_percent          = 30
canary_interval_minutes = 1
bake_time_minutes       = 1

# Branch Configuration
main_branch_name = "main"
dev_branch_name  = "dev"

# Common Tags Configuration
common_tags = {
  Project   = "Blue Green Deployment"
  ManagedBy = "Terraform"
  CreatedBy = "Sandeep Ningwal"
}
