<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.25.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_appserviceplan"></a> [appserviceplan](#module\_appserviceplan) | app.terraform.io/andygio/appserviceplan/azure | 1.0.0 |
| <a name="module_linuxwebapp"></a> [linuxwebapp](#module\_linuxwebapp) | app.terraform.io/andygio/linuxwebapp/azure | 1.0.8 |
| <a name="module_resourcegroup"></a> [resourcegroup](#module\_resourcegroup) | app.terraform.io/andygio/resourcegroup/azure | 1.0.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_env"></a> [app\_env](#input\_app\_env) | The env name: dev, qa, test or prod | `string` | n/a | yes |
| <a name="input_app_prefix"></a> [app\_prefix](#input\_app\_prefix) | The 3 or 4 character mnemonic for the application name | `string` | n/a | yes |
| <a name="input_app_settings"></a> [app\_settings](#input\_app\_settings) | Application setting | `map(string)` | `{}` | no |
| <a name="input_application_stack"></a> [application\_stack](#input\_application\_stack) | Application stack configuration, run `az webapp list-runtimes --os-type linux` to get the list of supported stacks | `map(string)` | `{}` | no |
| <a name="input_asp_sku"></a> [asp\_sku](#input\_asp\_sku) | The SKU for the asp. Link: https://azure.microsoft.com/en-us/pricing/details/app-service/windows/ | `string` | `"B1"` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | Optional custom hostname for the web app. | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The AZURE region location where this resource will be deployed to | `string` | n/a | yes |
| <a name="input_sub_prefix"></a> [sub\_prefix](#input\_sub\_prefix) | The 3 or 4 character mnemonic for this subscription | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to be applied to resources | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
