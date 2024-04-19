variable "TFC_CONFIGURATION_VERSION_GIT_BRANCH" {}

variable "length" {
  type = string
  default = "7"
}
 resource "random_pet" "name44" {
  length    = var.length
  separator = "-"
 }

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "env"
  }
  triggers = {
    run_every_time = uuid()
  }
}

resource "null_resource" "echo" {
  provisioner "local-exec" {
    command = "echo $TFC_CONFIGURATION_VERSION_GIT_BRANCH"
  }
  triggers = {
    run_every_time = uuid()
  }
}

output "branch" {
  value = var.TFC_CONFIGURATION_VERSION_GIT_BRANCH
}
