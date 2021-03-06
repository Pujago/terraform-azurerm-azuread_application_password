<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.15.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.80 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | ~> 2.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application_password.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_object_id"></a> [application\_object\_id](#input\_application\_object\_id) | The object ID of the application for which this password should be created. | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | A display name for the password. | `string` | `null` | no |
| <a name="input_end_date"></a> [end\_date](#input\_end\_date) | The end date until which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). | `string` | `null` | no |
| <a name="input_end_date_relative"></a> [end\_date\_relative](#input\_end\_date\_relative) | A relative duration for which the password is valid until, for example 240h (10 days) or 2400h30m. | `string` | `null` | no |
| <a name="input_rotate_when_changed"></a> [rotate\_when\_changed](#input\_rotate\_when\_changed) | A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp. | `map(string)` | `null` | no |
| <a name="input_start_date"></a> [start\_date](#input\_start\_date) | The start date from which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If this isn't specified, the current date is used. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | A UUID used to uniquely identify this password credential. |
| <a name="output_value"></a> [value](#output\_value) | The password for this application, which is generated by Azure Active Directory. |
<!-- END_TF_DOCS -->