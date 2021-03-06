variable "region" {
  default = "Central US"
}

variable "profile" {
  default = "terraform"
}

variable "availability_zone" {
  description = "https://docs.microsoft.com/en-us/azure/availability-zones/az-overview"
  default     = ""
}

variable "public_key_name" {
  description = "A name for SSH Keypair to use to auth to logger. Can be anything you specify."
  default     = "detectionlab"
}

variable "public_key_path" {
  description = "Path to the public key to be loaded into the logger authorized_keys file"
  type        = string
  default     = "/Users/dmoore/.ssh/detectionlab.pub"
}

# Note: must use ssh key without passphrase. not supported by Terraform.
variable "private_key_path" {
  description = "Path to the private key to use to authenticate to logger."
  type        = string
  default     = "/Users/dmoore/.ssh/detectionlab"
}

variable "ip_whitelist" {
  description = "A list of CIDRs that will be allowed to access the instances"
  type        = list(string)
  default     = ["72.48.100.0/23"]
}

variable "external_dns_servers" {
  description = "Configure lab to allow external DNS resolution"
  type        = list(string)
  default     = ["9.9.9.9"]
}