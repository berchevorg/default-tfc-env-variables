variable "TFC_CONFIGURATION_VERSION_GIT_BRANCH" {}

variable "length" {
  type = string
  default = "5"
}
 resource "random_pet" "name44" {
  length    = var.length
  separator = "-"
 }

resource "null_resource" "echo" {
  provisioner "local-exec" {
    command = "echo $TFC_CONFIGURATION_VERSION_GIT_BRANCH"
  }
  triggers = {
    run_every_time = uuid()
  }
}

output "commit" {
  value = var.TFC_CONFIGURATION_VERSION_GIT_BRANCH
}
