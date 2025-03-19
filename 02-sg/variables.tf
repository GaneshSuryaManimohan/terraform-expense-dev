variable "project_name" {
  type        = string
  default     = "expense"
}

variable "environment" {
  type        = string
  default     = "dev"
}

variable "common_tags" {
  default     = {
    Project = "Expense"
    Environment = "Dev"
    Terraform = "True"
  }
}

variable "sg_tags" {
  type        = string
  default     = ""
}

variable "db_sg_description" {
  default = "SG for DB MySQL Instance"
}

variable "backend_sg_description" {
  default = "SG for backend"
}

variable "frontend_sg_description" {
  default = "SG for frontend"
}