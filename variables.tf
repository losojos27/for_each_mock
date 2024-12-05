variable "oidc_project_list" {
  description = "The a list of OIDC projects and AWS IAM permissions"
  type = list(object({
    project = string
    actions = list(string),
  }))
}
