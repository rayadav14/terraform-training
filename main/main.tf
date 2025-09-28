terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">=1.1.0"
    }
  }
}

provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = "default"
}

data "akamai_group" "test_group" {
  group_name = "Test Akamai"
  contract_id = "1-3CV382"
}

output "test_group" {
  value = data.akamai_group.test_group
}

data "akamai_properties" "my_properties" {
    group_id    = "18405"
    contract_id = "1-3CV382"
}

output "my_properties" {
  value = data.akamai_properties.my_properties
}

data "akamai_appsec_configuration" "configurations" {

}
output "configuration-list" {
  value = data.akamai_appsec_configuration.configurations.output_text
}