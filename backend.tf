terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins_group"
    storage_account_name = "tfstatesumanprasad"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
