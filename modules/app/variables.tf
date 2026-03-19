variable "private_subnet_ids" {
  description = "List of private subnet IDs for the App ALB and ASG"
  type        = list(string)
}

variable "app_alb_sg_id" {
  description = "Security group ID for the App ALB"
  type        = string
}

variable "app_instance_sg_id" {
  description = "Security group ID for the App EC2 instances"
  type        = string
}

variable "app_ami" {
  description = "AMI ID for the app server"
  type        = string
}

variable "app_instance_type" {
  description = "EC2 instance type for app server"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "my-key"
}