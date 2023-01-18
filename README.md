## terraform-learning-lab-9
Write your personal module for creating EC2 instance in AWS with the following requirements:
- at least 5 variable validation blocks
- module must be compliant with checkov, terrascan, tfsec utils (if some checks disabled - argue it)
- generate doc for newly minted module with terraform-docs
- configure pre-commit file and perform push to your personal repo | course repo
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | AMI ID | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region. Should be passed from upper module | `string` | n/a | yes |
| <a name="input_az_letter"></a> [az\_letter](#input\_az\_letter) | AWS availability zone letter | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | EC2 Instance name | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 Instance type | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS --> 