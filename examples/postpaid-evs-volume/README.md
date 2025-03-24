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

| Name                | Source                                           | Version |
|---------------------|--------------------------------------------------|---------|
| postpaid_evs_volume | [evs volume](../../modules/evs-volume/README.md) | N/A     |

<!-- markdownlint-enable MD013 -->

## Resources

| Name                        | Type     |
|-----------------------------|----------|
| huaweicloud_evs_volume.test | resource |

## Inputs

<!-- markdownlint-disable MD013 -->

| Name                  | Description                                                      | Value                                                    |
|-----------------------|------------------------------------------------------------------|----------------------------------------------------------|
| evs_availability_zone | The availability zone for the EVS volume.                        | `"cn-north-4"`                                           |
| evs_volume_type       | The EVS volume type.                                             | `"GPSSD2"`                                               |
| evs_iops              | The IOPS(Input/Output Operations Per Second) for the EVS volume. | `3000`                                                   |
| evs_throughput        | The throughput for the EVS volume.                               | `125`                                                    |
| evs_device_type       | The device type for the EVS volume.                              | `"VBD"`                                                  |
| evs_name              | The EVS volume name.                                             | `"volume-test"`                                          |
| evs_description       | The EVS volume description.                                      | `"test description"`                                     |
| evs_size              | The EVS volume size, in GB.                                      | `20`                                                     |
| evs_multiattach       | Whether the EVS volume is shareable.                             | `false`                                                  |
| evs_tags              | The key/value pairs to associate with the EVS volume.            | <pre>{<br>  "foo": "bar",<br>  "key": "value"<br>}</pre> |

<!-- markdownlint-enable MD013 -->

## Outputs

| Name                       | Description                                                    |
|----------------------------|----------------------------------------------------------------|
| evs_volume_id              | The ID of the EVS volume.                                      |
| evs_attachment             | The EVS volume mount information.                              |
| evs_wwn                    | The unique identifier used for mounting the EVS volume.        |
| evs_dedicated_storage_name | The name of the DSS storage pool accommodating the EVS volume. |
| evs_status                 | The EVS volume status.                                         |
