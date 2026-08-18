variable "yc_token" {
  description = "Yandex Cloud OAuth token"
  type        = string
  sensitive   = true
}

variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "yc_folder_id" {
  description = "Yandex Folder ID"
  type        = string
}

variable "yc_zone" {
  description = "Yandex Cloud availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v2"
}

variable "image_id" {
  description = "Ubuntu image ID"
  type        = string
  default     = "fd806c8slu9j1pa87msc"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "network_id" {
  description = "VPC network ID"
  type        = string
}

variable "each_vm" {
  type = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    disk_volume = number
  }))
}
