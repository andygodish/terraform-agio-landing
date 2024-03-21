variable "app_env" {
  type        = string
  nullable    = false
  description = "The env name: dev, qa, test or prod"
}
variable "app_prefix" {
  type        = string
  nullable    = false
  description = "The 3 or 4 character mnemonic for the application name "
}
variable "app_settings" {
  type        = map(string)
  default     = {}
  description = "Application setting"
}
variable "asp_sku" {
  type        = string
  nullable    = false
  description = "The SKU for the asp. Link: https://azure.microsoft.com/en-us/pricing/details/app-service/windows/"
  default     = "B1"
}
variable "application_stack" {
  type        = map(string)
  default     = {}
  description = "Application stack configuration, run `az webapp list-runtimes --os-type linux` to get the list of supported stacks"
}
variable "location" {
  type        = string
  nullable    = false
  description = "The AZURE region location where this resource will be deployed to"
}
variable "sub_prefix" {
  type        = string
  nullable    = false
  description = "The 3 or 4 character mnemonic for this subscription"
}
variable "tags" {
  description = "tags to be applied to resources"
  type        = map(string)
  default     = {}
}