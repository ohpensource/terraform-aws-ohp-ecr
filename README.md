# Terrform Module - AWS Elastic Container Repositories

Current version: v0.0.0

## Maintainer

* Platform Services

## Documentation

### Usage

Module allows for a wide variety of use cases particularly around IAM and ECR policy permissions however it is recommended to use the generic IAM user in the core-shared account to pull/push images to the repository.

The module can be used directly from your own Terraform project to create ECRs in core-shared account. It is no longer necessary to deploy ECRs via the shd-services Cloudformation templates. An additional provider must be configured in your project:

``` (terraform)

variable "account_id_core_shared" { default = "086282490297" }

provider "aws" {
  alias                   = "core_shared"
  region                  = "eu-west-1"
  allowed_account_ids     = [var.account_id_core_shared]
}

module "ecr" {
  source = "git@bitbucket.org:ohpen-dev/terraform-aws-ns-ecs.git?ref=v0.4.0"

  providers = {
    aws = aws.core_shared
  }
  ........
}

```

NB: ref=v0.4.0 refers to the version tag of the module. It can be removed to always pull latest (not recommended). Version shown in code above is not necessarily the latest version available.

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->