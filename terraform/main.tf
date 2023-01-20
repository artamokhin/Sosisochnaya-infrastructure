module "tf-yc-instance" {
  source = "./modules/tf-yc-instance"
  image_id = var.image_id
  zone = var.zone
  subnet_id = [
    for k, subnet in module.tf-yc-network.yandex_vpc_subnets :
    subnet if subnet.zone == var.zone
  ][0].subnet_id
} 



module "tf-yc-network" {
  source = "./modules/tf-yc-network"
} 
