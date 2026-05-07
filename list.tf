terraform {
	  required_providers {
		azurerm = {
		  source  = "hashicorp/azurerm"
		  version = "4.70.0"
		}
	  }
  }

provider "azurerm" {
    features {}
      subscription_id = "9097d0f8-4798-48d3-891f-83da77060e96"
    }  
resource"azurerm_resource_group" "assinetest" {
    for_each = toset(var.roja)
  name = each.value
  location =var.location
}
variable "roja" {}
variable "location" {}
