variable "AWS_REGION" {
  type = string
}

variable "AWS_PUBLICKEY" {
  type = string
}

variable "AWS_SECRETKEY" {
	type = string
}

variable "sg_ingress_rules" {
    type        = map(object(
      {
        from = number
        to = number
        proto = string
        cidr = string
        desc = string
      }
    ))
    default     = {
        ssh = {from=22, to=22, proto="tcp", cidr="0.0.0.0/0", desc="ssh"}
        tls = {from=443, to=443, proto="tcp", cidr="0.0.0.0/0", desc="tls"}
        http = {from=80, to=80, proto="tcp", cidr="0.0.0.0/0", desc="http"}
    }
}