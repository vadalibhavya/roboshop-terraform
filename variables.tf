variable "instance" {
  default = {
    mongodb = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"
      vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
      zone_id = "Z02980273R2SC8CB35MNX"

    }
    catalogue = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"
      vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
      zone_id = "Z02980273R2SC8CB35MNX"

    },
    frontend = {
      ami_id = "ami-09c813fb71547fc4f"
      instance_type = "t3.small"
      vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
      zone_id = "Z02980273R2SC8CB35MNX"

    }
  }
}

variable "env" {
  default = "dev"
}