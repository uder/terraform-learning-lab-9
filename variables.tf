variable "aws_region" {
  description = "AWS Region. Should be passed from upper module"
  type        = string

  validation {
    condition     = can(regex("^(us-east-1|us-west-2)$", var.aws_region))
    error_message = "AWS region have to be us-east-1 or us-west-2"
  }
}

variable "az_letter" {
  description = "AWS availability zone letter"
  type        = string

  validation {
    condition     = can(regex("^(a|b|c)$", var.az_letter))
    error_message = "AWS AZ have to be a, b or c"
  }
}

variable "ami_id" {
  description = "AMI ID"
  type        = string

  validation {
    condition     = can(regex("^ami-[0-9a-f]+$", var.ami_id))
    error_message = "Wrong AMI ID"
  }
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string

  validation {
    condition     = var.instance_type == "t2.micro"
    error_message = "Instance type have to be t2.micro"
  }
}

variable "instance_name" {
  description = "EC2 Instance name"
  type        = string

  validation {
    condition     = can(regex("^terraform-learning", var.instance_name))
    error_message = "Instance name have to start from terraform-learning"
  }
}
