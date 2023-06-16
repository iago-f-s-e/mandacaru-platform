variable "do_token" {
  description = "Personal access token"
  type        = string
}

variable "ssh_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "droplet_image" {
  description = "The ubuntu image to droplet"
  type        = string
  default     = "ubuntu-20-04-x64"
}

variable "droplet_size" {
  type    = string
  default = "s-1vcpu-1gb"
}

variable "droplet_region" {
  type    = string
  default = "sfo3"
}