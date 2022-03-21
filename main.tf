variable "c" {
  default = 1
}
module "m" {
  source = "./module1"
  count = var.c
}