variable "TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA" {
  default = "xxxxxxxxxxxxxxxxxxx"
}

variable "length" {
  type = string
  default = "4"
}
 resource "random_pet" "name44" {
  length    = var.length
  separator = "-"
 }

resource "null_resource" "echo" {
  provisioner "local-exec" {
    command = "echo $TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA"
  }
  triggers = {
    run_every_time = uuid()
  }
}

output "commit" {
  value = var.TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA
}
