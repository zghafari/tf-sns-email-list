
# SNS Email List w/Topic Terraform Module #

Terraform Module for SNS Topic and List of Emails

## Introduction

Terraform supports most AWS SNS resource options except for email or email-json protocols. Because the email needs to be
confirmed, it becomes out of the normal bounds of the terraform model so it does not support it. 

This module creates an SNS email topic via a CloudFormation that outputs the ARN for use elsewhere. 

## Usage

Use the module in your terraform files:

    module "sns-email-topic" {
      source = "github.com/zghafari/tf-sns-email-list"

      display_name  = "Example: CloudWatch Alerts"
      email_addresses = ["user1@example.com, user2@example.com"]
      stack_name    = "unique-sns-stack-name"
    }

run`terraform init` to download the module.

Once you've applied it you can check the value with

    terraform output -module=sns-email-topic arn

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| display_name | Name shown in confirmation emails | string | - | yes |
| email_addresses | Email address to send notifications to | list | - | yes |
| protocol | SNS Protocol to use, for email use - email or email-json | string | `email` | no |
| stack_name | Unique Cloudformation stack name that wraps the SNS topic. | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | Email SNS topic ARN |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Walk-through
http://aws-cloud.guru/terraform-support-for-email-sns-topic-subscription-bonus-email-list/

### Author

  [Zubin Ghafari](https://www.linkedin.com/in/zghafari/)
