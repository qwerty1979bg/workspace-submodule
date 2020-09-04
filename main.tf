module "submodule" {
  source  = "app.terraform.io/filipd-test/submodule/null"
  version = "0.0.1"
}

#output "test1" {
#  value = module.submodule.test1
#}

resource "null_resource" "always" {
  triggers = {
    build_number = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "ls -laR /terraform"
  }
}
