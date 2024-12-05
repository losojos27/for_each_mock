module "oidc-project" {
  for_each = { for oidc_project in var.oidc_project_list : oidc_project.project => oidc_project }

  source  = "./oidc-project/"
  project = each.value.project
  actions = each.value.actions
}

output "project" {
  value = module.oidc-project[*].*

}
