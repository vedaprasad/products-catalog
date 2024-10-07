variable "authentication_mode" {
  description = "The authentication mode for the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`"
  type        = string
  default     = "API_AND_CONFIG_MAP"
}

variable "user_name_eks" {
  description = "This IAM user has Admin acess to EKS Cluster"
  type        = string
  default     = "terraform-user"
}

variable "ecr_name" {
  description = "The name of the ECR registry"
  type        = any
  default     = ["catalog_detail", "product_catalog", "frontend_node"]
}

variable "image_mutability" {
  description = "Provide image mutability"
  type        = string
  default     = "IMMUTABLE"
}

