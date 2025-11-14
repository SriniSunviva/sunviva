output "instance_name" {
  description = "Instance name"
  value       = google_compute_instance.vm_instance.name
}

output "external_ip" {
  description = "External IP address of the instance"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

output "self_link" {
  description = "Self-link of the instance"
  value       = google_compute_instance.vm_instance.self_link
}
