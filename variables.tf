variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for instances"
  type        = string
}

variable "instance_type" {
  description = "instance type for instances"
  type        = string
}

variable "sub_public" {
  description = "CIDR blocks for the public subnets"
  type        = list(any)
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(any)
}

variable "sub_private" {
  description = "CIDR blocks for the private subnets"
  type        = list(any)
}

variable "region" {
  description = "The AWS region"
  type        = string
}

variable "node_group_ami_type" {
  description = "AMI ID for node group instances"
  type        = string
}

variable "node_group_capacity_type" {
  description = "Capacity type for node group instances"
  type        = string
}

variable "node_group_instance_types" {
  description = "instance types associated with the EKS Node Group"
  type        = list(any)
}

