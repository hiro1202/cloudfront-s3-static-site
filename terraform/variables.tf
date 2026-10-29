variable "aws_profile" {
  description = "使用する AWS プロファイル名（必須・デフォルトなし）"
  type        = string
  nullable    = false

  validation {
    condition     = length(trimspace(var.aws_profile)) > 0
    error_message = "aws_profile を指定してください。"
  }
}

variable "region" {
  description = "S3 バケットを作るリージョン"
  type        = string
  default     = "ap-northeast-1"
}

variable "project_name" {
  description = "リソース名の接頭辞"
  type        = string
  default     = "cloudfront-s3-static-site"
}
