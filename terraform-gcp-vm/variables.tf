variable "project" {
  description = "GCP project id"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central2"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-b"
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
  default     = "tf-vm"
}

variable "machine_type" {
  description = "Machine type for the VM"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "Boot image (family/project or family/image)"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "network" {
  description = "Network to attach the instance to"
  type        = string
  default     = "default"
}
