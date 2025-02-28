instance = {
  mongodb = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]


  }
  catalogue = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]


  },
  frontend = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
  }

}
env = "dev"
