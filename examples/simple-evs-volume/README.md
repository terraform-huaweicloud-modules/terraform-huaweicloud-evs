# Simple EVS

Configuration in this directory creates a default volume resource.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources and spend a few money. Run `terraform destroy` when you don't need them.

## Requirement

| Name                 | Version   |
|----------------------|-----------|
| Terraform            | >= 1.3.0  |
| HuaweiCloud Provider | >= 1.40.0 |

## Providers

[terraform-provider-huaweicloud](https://github.com/huaweicloud/terraform-provider-huaweicloud)

## Modules

| Name              | Source                                                         | Version |
|-------------------|----------------------------------------------------------------|---------|
| simple_evs_volume | [evs simple volume](../../modules/evs-volume-simple/README.md) | N/A     |

## Resources

| Name                           | Type     |
|--------------------------------|----------|
| huaweicloud_evs_volume.this[0] | resource |

## Inputs

| Name              | Description                                           | Type        | Default value                                                |
|-------------------|-------------------------------------------------------|-------------|--------------------------------------------------------------|
| availability_zone | The availability zone where the EVS volume is located | string      | null                                                         |
| volume_name       | The name of the EVS volume                            | string      | N/A                                                          |
| volume_type       | The type of the EVS volume                            | string      | N/A                                                          |
| volume_size       | The capacity of the EVS volume                        | number      | N/A                                                          |
| volume_tags       | The key/value pairs of the EVS volumes                | map(string) | <pre>{<br>  Creator = "terraform-huaweicloud-evs"<br>}</pre> |
