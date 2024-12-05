terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}


resource "random_pet" "pet_name" {
  length    = 2
  separator = "-"
}

locals {
  pet_name = format("%s-%s", var.project, random_pet.pet_name.id)
  actions  = var.actions

}
