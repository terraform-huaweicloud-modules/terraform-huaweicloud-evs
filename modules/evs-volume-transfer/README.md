# EVS volume transfer management

Manages the EVS volume transfer resource.

## Notes

### How to import resources in the module structure

Please make sure that the corresponding module script has been defined in your `.tf` file, like this:

```hcl
# Manages an EVS volume transfer.
module "evs_volume_transfer" {
  source = "github.com/terraform-huaweicloud-modules/terraform-huaweicloud-evs/modules/evs-volume-transfer"

  ...
}
```

Execute the following command to import the corresponding resource into the management of the `.tfstate` file.

```bash
$ terraform import module.evs_volume_transfer.huaweicloud_evs_volume_transfer.this[0] "volume_transfer_id"

module.evs_volume_transfer.huaweicloud_evs_volume_transfer.this[0]: Importing from ID "volume_transfer_id"...
module.evs_volume_transfer.huaweicloud_evs_volume_transfer.this[0]: Import prepared!
  Prepared huaweicloud_evs_volume_transfer for import
module.evs_volume_transfer.huaweicloud_evs_volume_transfer.this[0]: Refreshing state... [id=volume_transfer_id]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.
```

### What should we do before deploy this module example

Before manage EVS resources, the access key (AK, the corresponding environment name is `HW_ACCESS_KEY`) and the secret
key (SK, the corresponding environment name is `HW_SECRET_KEY`) should be configured.

For the linux VM, you can configure the corresponding environment variables with the following commands:

```bash
$ export HW_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXX
$ export HW_SECRET_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

Refer to this [document](https://support.huaweicloud.com/intl/en-us/devg-apisign/api-sign-provide-aksk.html) for AK/SK
information obtain.

## Contributing

Report issues/questions/feature requests in
the [issues](https://github.com/terraform-huaweicloud-modules/terraform-huaweicloud-evs/issues/new)
section.

Full contributing [guidelines are covered here](../../.github/how_to_contribute.md).

## Requirements

| Name                 | Version   |
|----------------------|-----------|
| Terraform            | >= 1.3.0  |
| Huaweicloud Provider | >= 1.73.0 |

## Modules

No module.

## Resources

| Name                                 | Type     |
|--------------------------------------|----------|
| huaweicloud_evs_volume_transfer.this | resource |

## Inputs

<!-- markdownlint-disable MD013 -->
| Name                      | Description                                                                                                         | Type     | Default |                          Required                          |
|---------------------------|---------------------------------------------------------------------------------------------------------------------|----------|:-------:|:----------------------------------------------------------:|
| is_volume_transfer_create | Controls whether the EVS volume transfer should be created (it affects all EVS related resources under this module) | `bool`   | `true`  |                             N                              |
| volume_transfer_volume_id | The volume ID to be transferred                                                                                     | `string` | `null`  | Y (Unless is_volume_transfer_create is specified as false) |
| volume_transfer_name      | The name of the volume transfer record                                                                              | `string` | `null`  | Y (Unless is_volume_transfer_create is specified as false) |
<!-- markdownlint-enable MD013 -->

## Outputs

| Name                       | Description                                                        |
|----------------------------|--------------------------------------------------------------------|
| volume_transfer_id         | The resource ID in UUID format                                     |
| volume_transfer_auth_key   | The identity authentication key for volume transfer                |
| volume_transfer_created_at | The creation time of the volume transfer record, in RFC3339 format |
