resource "aws_ecr_repository" "ecr" {
  for_each             = toset(var.ecr_name)
  name                 = each.key
  image_tag_mutability = var.image_mutability
  force_delete         = true #### Should be false in Prod like env ####
  encryption_configuration {
  }
  image_scanning_configuration {
    scan_on_push = true
  }
}