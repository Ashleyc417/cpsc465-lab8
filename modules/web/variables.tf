variable "public_subnet_ids" {
  description = "List of public subnet IDs for the ALB and ASG"
  type        = list(string)
}

variable "web_alb_sg_id" {
  description = "Security group ID for the Web ALB"
  type        = string
}

variable "web_instance_sg_id" {
  description = "Security group ID for the Web EC2 instances"
  type        = string
}

variable "web_ami" {
  description = "AMI ID for the web server"
  type        = string
}

variable "web_instance_type" {
  description = "EC2 instance type for web server"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "my-key" # Change this to your actual AWS key pair name
}