variable "AWS_REGION" {
  type = string
  default = "us-east-1"
}

variable "AWS_ACCESS_KEY" {
  type = string
}

variable "AWS_SECRET_KEY" {
  type = string
}

variable "BUCKET_NAME" {
  type = string
}

variable "AMI_ID" {
  type = string
}

variable "TAG_PREFIX" {
  type = string
}

variable "PATH_TO_WEBSERVER_PUBLIC_KEY" {
  type = string
}
