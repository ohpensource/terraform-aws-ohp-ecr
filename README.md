# Terrform Module - AWS Elastic Container Repositories

[![license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/ohpensource/terraform-aws-ohp-ecr/continuous-delivery)

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/ohpensource/terraform-aws-ohp-ecr)

## Maintainer

* Platform Services

## Usage

<!--- BEGIN_TF_DOCS --->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_ecr_lifecycle_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_repository_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository_policy) | resource |
| [aws_iam_access_key.pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_access_key.push](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_role.ecr_pull_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.ecr_push_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ecr_pull_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecr_push_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_user.pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user.push](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_user_policy.push](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_secretsmanager_secret.pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret.push](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_secret_version.push](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_iam_policy_document.assume_role_policy_pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.assume_role_policy_push](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ecr_policy_auth](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ecr_policy_pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ecr_policy_push](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ecr_pull_user_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ecr_push_user_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_ecr_policy"></a> [create\_ecr\_policy](#input\_create\_ecr\_policy) | n/a | `bool` | `false` | no |
| <a name="input_create_iam_role_pull"></a> [create\_iam\_role\_pull](#input\_create\_iam\_role\_pull) | n/a | `bool` | `false` | no |
| <a name="input_create_iam_role_push"></a> [create\_iam\_role\_push](#input\_create\_iam\_role\_push) | n/a | `bool` | `false` | no |
| <a name="input_create_iam_user_pull"></a> [create\_iam\_user\_pull](#input\_create\_iam\_user\_pull) | n/a | `bool` | `false` | no |
| <a name="input_create_iam_user_push"></a> [create\_iam\_user\_push](#input\_create\_iam\_user\_push) | n/a | `bool` | `false` | no |
| <a name="input_create_lifecycle_policy"></a> [create\_lifecycle\_policy](#input\_create\_lifecycle\_policy) | n/a | `bool` | `true` | no |
| <a name="input_custom_ecr_policy"></a> [custom\_ecr\_policy](#input\_custom\_ecr\_policy) | Json formatted ECR policy - overrides any default policy | `any` | `null` | no |
| <a name="input_default_ecr_policy_type"></a> [default\_ecr\_policy\_type](#input\_default\_ecr\_policy\_type) | pull or push | `any` | `null` | no |
| <a name="input_ecr_policy_principal_type"></a> [ecr\_policy\_principal\_type](#input\_ecr\_policy\_principal\_type) | List of principals allowed to use the ECR policy | `string` | `"AWS"` | no |
| <a name="input_ecr_policy_principals"></a> [ecr\_policy\_principals](#input\_ecr\_policy\_principals) | List of principals allowed to use the ECR policy | `list` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_ecr_pull_role_policy_arn"></a> [ecr\_pull\_role\_policy\_arn](#input\_ecr\_pull\_role\_policy\_arn) | Arn of ECR policy to attach to pull role | `string` | `null` | no |
| <a name="input_ecr_pull_role_principal_type"></a> [ecr\_pull\_role\_principal\_type](#input\_ecr\_pull\_role\_principal\_type) | n/a | `string` | `"*"` | no |
| <a name="input_ecr_pull_role_principals"></a> [ecr\_pull\_role\_principals](#input\_ecr\_pull\_role\_principals) | n/a | `list(any)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_ecr_push_role_policy_arn"></a> [ecr\_push\_role\_policy\_arn](#input\_ecr\_push\_role\_policy\_arn) | Arn of ECR policy to attach to push role | `string` | `null` | no |
| <a name="input_ecr_push_role_principal_type"></a> [ecr\_push\_role\_principal\_type](#input\_ecr\_push\_role\_principal\_type) | n/a | `string` | `"*"` | no |
| <a name="input_ecr_push_role_principals"></a> [ecr\_push\_role\_principals](#input\_ecr\_push\_role\_principals) | n/a | `list(any)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | (Optional) The encryption type to use for the repository. Valid values are AES256 or KMS. Defaults to AES256 | `string` | `"AES256"` | no |
| <a name="input_expire_untagged_image_days"></a> [expire\_untagged\_image\_days](#input\_expire\_untagged\_image\_days) | Expire untagged images older than X days | `number` | `30` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | Image tag immutablity MUTABLE/IMMUTABLE | `string` | `"IMMUTABLE"` | no |
| <a name="input_keep_last_x_tagged_images"></a> [keep\_last\_x\_tagged\_images](#input\_keep\_last\_x\_tagged\_images) | Keep last X tagged images | `number` | `10` | no |
| <a name="input_kms_key"></a> [kms\_key](#input\_kms\_key) | (Optional) The ARN of the KMS key to use when encryption\_type is KMS. If not specified, uses the default AWS managed key for ECR | `any` | `null` | no |
| <a name="input_lifecycle_policy"></a> [lifecycle\_policy](#input\_lifecycle\_policy) | ECR lifecycle policy (jsonencoded) | `any` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | EC Repository Name | `any` | n/a | yes |
| <a name="input_pull_iam_role_name"></a> [pull\_iam\_role\_name](#input\_pull\_iam\_role\_name) | ECR Pull Role name - leave blank for default name based on var.name | `any` | `null` | no |
| <a name="input_pull_iam_user_name"></a> [pull\_iam\_user\_name](#input\_pull\_iam\_user\_name) | ECR Pull User name - leave blank for default name based on var.name | `any` | `null` | no |
| <a name="input_push_iam_role_name"></a> [push\_iam\_role\_name](#input\_push\_iam\_role\_name) | ECR Push Role name - leave blank for default name based on var.name | `any` | `null` | no |
| <a name="input_push_iam_user_name"></a> [push\_iam\_user\_name](#input\_push\_iam\_user\_name) | ECR Push User name - leave blank for default name based on var.name | `any` | `null` | no |
| <a name="input_scan_image_on_push"></a> [scan\_image\_on\_push](#input\_scan\_image\_on\_push) | Scan image for vulnerabilities on push | `bool` | `true` | no |
| <a name="input_tag_prefix_list"></a> [tag\_prefix\_list](#input\_tag\_prefix\_list) | List of tag prefixes | `list` | <pre>[<br>  "v"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Required) Map of tags to apply to repository | `map(any)` | `{}` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Full ARN of the repository |
| <a name="output_id"></a> [id](#output\_id) | The registry ID where the repository was created |
| <a name="output_url"></a> [url](#output\_url) | The URL of the repository |

<!--- END_TF_DOCS --->
