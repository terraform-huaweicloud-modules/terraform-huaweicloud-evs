# EVS snapshot management

Manages the EVS snapshot resource.

## Notes

### How to import resources in the module structure

Please make sure that the corresponding module script has been defined in your `.tf` file, like this:

```hcl
# Manages an EVS snapshot.
module "evs_snapshot" {
  source = "github.com/terraform-huaweicloud-modules/terraform-huaweicloud-evs/modules/evs-snapshot"

  ...
}
```

Execute the following command to import the corresponding resource into the management of the `.tfstate` file.

```bash
$ terraform import module.evs_snapshot.huaweicloud_evs_snapshot.this[0] "snapshot_id"

module.evs_snapshot.huaweicloud_evs_snapshot.this[0]: Importing from ID "snapshot_id"...
module.evs_snapshot.huaweicloud_evs_snapshot.this[0]: Import prepared!
  Prepared huaweicloud_evs_snapshot for import
module.evs_snapshot.huaweicloud_evs_snapshot.this[0]: Refreshing state... [id=snapshot_id]

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

| Name                          | Type     |
|-------------------------------|----------|
| huaweicloud_evs_snapshot.this | resource |

## Inputs

<!-- markdownlint-disable MD013 -->
| Name                 | Description                                                                                                   | Type                     | Default |                      Required                       |
|----------------------|---------------------------------------------------------------------------------------------------------------|--------------------------|:-------:|:---------------------------------------------------:|
| is_snapshot_create   | Controls whether the EVS snapshots should be created (it affects all EVS related resources under this module) | `bool`                   | `true`  |                          N                          |
| snapshot_volume_id   | The ID of the snapshot's source EVS volume                                                                    | `string`                 | `null`  | Y (Unless is_snapshot_create is specified as false) |
| snapshot_name        | The name of the snapshot                                                                                      | `string`                 | `null`  | Y (Unless is_snapshot_create is specified as false) |
| snapshot_metadata    | The user-defined metadata key-value pair                                                                      | `<pre>map(string)</pre>` | `null`  |                          N                          |
| snapshot_description | The description of the snapshot                                                                               | `string`                 | `null`  |                          N                          |
| snapshot_force       | The flag for forcibly creating a snapshot                                                                     | `bool`                   | `null`  |                          N                          |
<!-- markdownlint-enable MD013 -->

## Outputs

| Name            | Description                    |
|-----------------|--------------------------------|
| snapshot_id     | The ID of the snapshot         |
| snapshot_status | The status of the snapshot     |
| snapshot_size   | The size of the snapshot in GB |
