# Prepaid EVS volume example

Configuration in this directory creates a prepaid EVS volume.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan -var-file=variables.json
$ terraform apply -var-file=variables.json
```

Run `terraform destroy -var-file=variables.json` when you don't need these resources.

## Requirements

| Name                 | Version   |
|----------------------|-----------|
| Terraform            | >= 1.3.0  |
| Huaweicloud Provider | >= 1.73.0 |

## Modules

<!-- markdownlint-disable MD013 -->
| Name       | Source                                                         | Version |
|------------|----------------------------------------------------------------|---------|
| evs_volume | [../../modules/evs-volume](../../modules/evs-volume/README.md) | N/A     |
<!-- markdownlint-enable MD013 -->

## Resources

| Name                                     | Type        |
|------------------------------------------|-------------|
| huaweicloud_evs_volume.this              | resource    |
| data.huaweicloud_availability_zones.this | data-source |

## Inputs

<!-- markdownlint-disable MD013 -->
| Name                     | Description                                          | Value                                                 |
|--------------------------|------------------------------------------------------|-------------------------------------------------------|
| volume_charging_mode     | The charging mode of the EVS volume                  | `"prePaid"`                                           |
| volume_period_unit       | The charging period unit of the EVS volume           | `"month"`                                             |
| volume_period            | The charging period of the EVS volume                | `1`                                                   |
| volume_auto_renew        | Whether auto-renew is enabled for EVS volume         | `"true"`                                              |
| volume_availability_zone | The availability zone for the EVS volume             | `"cn-north-4a"`                                       |
| volume_type              | The EVS volume type                                  | `"GPSSD"`                                             |
| volume_device_type       | The device type for the EVS volume                   | `"VBD"`                                               |
| volume_name              | The EVS volume name                                  | `"test-volume-name"`                                  |
| volume_description       | The EVS volume description                           | `"test description"`                                  |
| volume_size              | The EVS volume size, in GB                           | `20`                                                  |
| volume_multiattach       | Whether the EVS volume is shareable                  | `false`                                               |
| volume_tags              | The key/value pairs to associate with the EVS volume | <pre>{<br>  foo = "bar"<br>  key = "value"<br>}</pre> |
<!-- markdownlint-enable MD013 -->

## Outputs

| Name          | Description                                            |
|---------------|--------------------------------------------------------|
| volume_id     | The ID of the EVS volume                               |
| volume_wwn    | The unique identifier used for mounting the EVS volume |
| volume_status | The EVS volume status                                  |
