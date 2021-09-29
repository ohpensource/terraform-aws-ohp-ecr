resource "aws_ecr_repository" "main" {
  name                 = var.name
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_image_on_push
  }

  encryption_configuration {
    encryption_type = var.encryption_type
    kms_key         = var.kms_key
  }

  tags = merge(
    var.tags,
    tomap(
      { "Name" = var.name }
    )
  )
}

resource "aws_ecr_lifecycle_policy" "main" {
  count      = local.create_lifecycle_policy
  repository = aws_ecr_repository.main.name
  policy     = local.lifecycle_policy
}

resource "aws_ecr_repository_policy" "main" {
  count      = local.create_ecr_policy
  repository = aws_ecr_repository.main.name

  policy = local.ecr_policy
}
