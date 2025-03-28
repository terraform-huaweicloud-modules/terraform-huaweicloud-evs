# EVS volume management

Manages the EVS volume resource.

## Notes

### How to import resources in the module structure

Please make sure that the corresponding module script has been defined in your `.tf` file, like this:

```hcl
# Manages an EVS volume.
module "evs_volume" {
  source = "github.com/terraform-huaweicloud-modules/terraform-huaweicloud-evs/modules/evs-volume"

  ...
}
```

Execute the following command to import the corresponding resource into the management of the `.tfstate` file.

```bash
$ terraform import module.evs_volume.huaweicloud_evs_volume.this[0] "evs_volume_id"

module.evs_volume.huaweicloud_evs_volume.this[0]: Importing from ID "evs_volume_id"...
module.evs_volume.huaweicloud_evs_volume.this[0]: Import prepared!
  Prepared huaweicloud_evs_volume for import
module.evs_volume.huaweicloud_evs_volume.this[0]: Refreshing state... [id=evs_volume_id]

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

| Name                        | Type     |
|-----------------------------|----------|
| huaweicloud_evs_volume.this | resource |

## Inputs

<!-- markdownlint-disable MD013 -->
| Name                         | Description                                                                                                      | Type                     | Default |                     Required                      |
|------------------------------|------------------------------------------------------------------------------------------------------------------|--------------------------|:-------:|:-------------------------------------------------:|
| volume_charging_mode         | The charging mode of the EVS volume                                                                              | `string`                 | `null`  |                         N                         |
| volume_period_unit           | The charging period unit of the EVS volume                                                                       | `string`                 | `null`  |                         N                         |
| volume_period                | The charging period of the EVS volume                                                                            | `number`                 | `null`  |                         N                         |
| volume_auto_renew            | Whether auto-renew is enabled for EVS volume                                                                     | `string`                 | `null`  |                         N                         |
| is_volume_create             | Controls whether the EVS volumes should be created (it affects all EVS related resources under this module)      | `bool`                   | `true`  |                         N                         |
| volume_availability_zone     | The availability zone for the EVS volume                                                                         | `string`                 | `null`  | Y (Unless is_volume_create is specified as false) |
| volume_type                  | The EVS volume type                                                                                              | `string`                 | `null`  | Y (Unless is_volume_create is specified as false) |
| volume_server_id             | The server ID to which the EVS volume is to be mounted                                                           | `string`                 | `null`  |                         N                         |
| volume_iops                  | The IOPS(Input/Output Operations Per Second) for the EVS volume                                                  | `number`                 | `null`  |                         N                         |
| volume_throughput            | The throughput for the EVS volume                                                                                | `number`                 | `null`  |                         N                         |
| volume_device_type           | The device type for the EVS volume                                                                               | `string`                 | `null`  |                         N                         |
| volume_name                  | The EVS volume name                                                                                              | `string`                 | `null`  |                         N                         |
| volume_description           | The EVS volume description                                                                                       | `string`                 | `null`  |                         N                         |
| volume_size                  | The EVS volume size, in GB.                                                                                      | `number`                 | `null`  |                         N                         |
| volume_backup_id             | The backup ID from which to create the EVS volume                                                                | `string`                 | `null`  |                         N                         |
| volume_image_id              | The image ID from which to create the EVS volume                                                                 | `string`                 | `null`  |                         N                         |
| volume_snapshot_id           | The snapshot ID from which to create the EVS volume                                                              | `string`                 | `null`  |                         N                         |
| volume_kms_id                | The encryption KMS ID                                                                                            | `string`                 | `null`  |                         N                         |
| volume_multiattach           | Whether the EVS volume is shareable                                                                              | `bool`                   | `null`  |                         N                         |
| volume_dedicated_storage_id  | The ID of the DSS storage pool accommodating the EVS volume                                                      | `string`                 | `null`  |                         N                         |
| volume_tags                  | The key/value pairs to associate with the EVS volume                                                             | `<pre>map(string)</pre>` | `null`  |                         N                         |
| volume_enterprise_project_id | The enterprise project ID of the disk. For enterprise users, if omitted, default enterprise project will be used | `string`                 | `null`  |                         N                         |
| volume_cascade               | The delete mode of snapshot                                                                                      | `bool`                   | `null`  |                         N                         |
<!-- markdownlint-enable MD013 -->

## Outputs

| Name                          | Description                                                   |
|-------------------------------|---------------------------------------------------------------|
| volume_id                     | The ID of the EVS volume                                      |
| volume_wwn                    | The unique identifier used for mounting the EVS volume        |
| volume_dedicated_storage_name | The name of the DSS storage pool accommodating the EVS volume |
| volume_status                 | The EVS volume status                                         |
