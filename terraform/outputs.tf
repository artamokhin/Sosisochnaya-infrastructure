#output "yandex_vpc_subnets" {
#  description = "Yandex.Cloud Subnets map"
#  value       = data.tf-yc-instance.external_ip_adress.default
#} 

output "external_ip_adress" {
  description = "VM External IP"
  value       = module.tf-yc-instance.external_ip
}
