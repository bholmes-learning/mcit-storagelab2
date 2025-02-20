variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}

variable "account_tier"{
  type=string
  default="Premium"
}
variable "account_replication_type"{
  type=string
  default="RAGZRS"
}
variable "environment"{
  type=string
  default="production"
}
variable "min_tls_version"{
  type=string
  default="TLS1_1"
}
variable "storage_account_names" {
  type    = list(string)
  default = [
    "braedenmcitsa1",
    "braedenmcitsa2",
    "braedenmcitsa3",
    "braedenmcitsa4",
    "braedenmcitsa5"
  ]
}
