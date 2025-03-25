# Postpaid EVS volume example

Configuration in this directory creates a postpaid EVS volume.

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
| Name                     | Description                                                     | Value                                                 |
|--------------------------|-----------------------------------------------------------------|-------------------------------------------------------|
| volume_availability_zone | The availability zone for the EVS volume                        | `"cn-north-4"`                                        |
| volume_volume_type       | The EVS volume type                                             | `"GPSSD2"`                                            |
| volume_iops              | The IOPS(Input/Output Operations Per Second) for the EVS volume | `3000`                                                |
| volume_throughput        | The throughput for the EVS volume                               | `125`                                                 |
| volume_device_type       | The device type for the EVS volume                              | `"VBD"`                                               |
| volume_name              | The EVS volume name                                             | `"volume-test"`                                       |
| volume_description       | The EVS volume description                                      | `"test description"`                                  |
| volume_size              | The EVS volume size, in GB                                      | `20`                                                  |
| volume_multiattach       | Whether the EVS volume is shareable                             | `false`                                               |
| volume_tags              | The key/value pairs to associate with the EVS volume            | <pre>{<br>  foo = "bar"<br>  key = "value"<br>}</pre> |
<!-- markdownlint-enable MD013 -->

## Outputs

| Name             | Description                                            |
|------------------|--------------------------------------------------------|
| volume_volume_id | The ID of the EVS volume                               |
| volume_wwn       | The unique identifier used for mounting the EVS volume |
| volume_status    | The EVS volume status                                  |
