resource "null_resource" "MAIN" {
  triggers = {
    TIME = "${timestamp()}"
  }
}

# stuff = "${var.main}-${timestamp()}"
# variable "main" {
#   type = string
# }

# variable "child" {
#   type = string
# }

module "CHILD" {
  source = "./modules/test"

  # child = "${var.child}"
}
