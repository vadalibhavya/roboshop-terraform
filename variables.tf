variable "ami_id" {
  description = "AMI ID"
  default     = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  description = "Instance Type"
  default     = "t3.small"
}

variable "vpc_security_group_ids" {
  description = "secuprity group"
  default = ["sg-0d39c28f1d7e34d30"]
}

variable "zone_id" {
  description = "Zoneid information"
  default = "Z02980273R2SC8CB35MNX"
}