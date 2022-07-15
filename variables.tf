variable "project" {
  type    = string
  default = "my-project"
}

variable "project_id" {
  description = "The GCP Project ID."
  type        = string
}

variable "regions" {
  type    = set(string)
  default = ["us-central1"]
}

variable "subnet_cidrs" {
  type        = map(string)
  description = "Subnet CIDR for VPC"
  default = {
    us-central1 = "10.1.1.0/24"
  }
}

variable "machine_type" {
  description = "The size of the VM instances."
  type        = string
  default     = "f1-micro"
}

variable "preemptible" {
  type    = bool
  default = false
}

variable "instance_count" {
  description = "Number of instances to provision."
  type        = number
  default     = 1
}

variable "startup_script" {
  type = string
}
