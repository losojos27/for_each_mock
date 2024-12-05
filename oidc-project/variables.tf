variable "project" {
  description = "The project name"
  type        = string

}

variable "actions" {
  description = "The list of actions to allow"
  type        = list(string)
}
