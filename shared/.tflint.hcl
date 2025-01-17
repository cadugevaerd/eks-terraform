tflint {
  required_version = ">= 0.50"
}

config {
  format = "compact"

  call_module_type = "local"
}
plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

plugin "aws" {
    enabled = true
    version = "0.34.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}