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
| <a name="module_linuxwebapp"></a> [linuxwebapp](#module\_linuxwebapp) | app.terraform.io/andygio/linuxwebapp/azure | 1.0.1 |
| <a name="module_resourcegroup"></a> [resourcegroup](#module\_resourcegroup) | app.terraform.io/andygio/resourcegroup/azure | 1.0.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_env"></a> [app\_env](#input\_app\_env) | The env name: dev, qa, test or prod | `string` | n/a | yes |
| <a name="input_app_prefix"></a> [app\_prefix](#input\_app\_prefix) | The 3 or 4 character mnemonic for the application name | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The AZURE region location where this resource will be deployed to | `string` | n/a | yes |
| <a name="input_sub_prefix"></a> [sub\_prefix](#input\_sub\_prefix) | The 3 or 4 character mnemonic for this subscription | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to be applied to resources | `map(string)` | `{}` | no |
| <a name="input_unique_name_string"></a> [unique\_name\_string](#input\_unique\_name\_string) | Provide this value if you want to create a unique name combination for this resource | `string` | `""` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
