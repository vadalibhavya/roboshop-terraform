variable "instance" {
  default = {
    mongodb = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"


    }
    catalogue = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"


    },
    frontend = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"


    }
  }
}
variable "zone_id" {
  default = "Z02980273R2SC8CB35MNX"
}
variable "vpc_security_group_ids" {
  default = ["sg-0d39c28f1d7e34d30"]
}
variable "env" {
  default = "dev"
}