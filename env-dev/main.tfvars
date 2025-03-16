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
    ansible_role = "catalogue-docker"


  }
  frontend = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
    ansible_role = "frontend-docker"
  }
  mongodb = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]


  }
  redis = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]


  }
  cart = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
    ansible_role = "cart-docker"


  }
  user = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
    ansible_role = "user-docker"
  }
  shipping = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
  }
  mysql = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
  }
  rabbitmq = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]

  }
  payment = {
    ami_id                 = "ami-09c813fb71547fc4f"
    instance_type          = "t3.small"
    zone_id                = "Z02980273R2SC8CB35MNX"
    vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
    ansible_role = "payment-docker"
  }
}

env = "dev"
eks = {
  main={
    subnets = ["subnet-0414a67f3510e5e03","subnet-0967a6db096113842"  ]
    version = "1.24"
  }

}