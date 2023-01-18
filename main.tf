locals {
  availability_zone = "${var.aws_region}${var.az_letter}"
}

resource "aws_instance" "ec2" {
  #checkov:skip=CKV_AWS_126:Detailed monitoring is not required
  #checkov:skip=CKV2_AWS_41:A role for ec2 is not required

  instance_type     = var.instance_type
  ami               = var.ami_id
  availability_zone = local.availability_zone
  ebs_optimized     = true

  root_block_device {
    encrypted = true
  }

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  tags = {
    Name = var.instance_name
  }
}
