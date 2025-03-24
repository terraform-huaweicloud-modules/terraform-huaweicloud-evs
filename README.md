# The Terraform module of HUAWEI Cloud EVS service

What capabilities does the current module provide:

+ Create postpaid EVS volumes.

## Notes

If you want to manage EVS resources using Terraform module (via this repository), you need to make the following
declaration in the `source` of the script.

```hcl
# Use the latest version.
module "evs_volume" {
  source = "github.com/terraform-huaweicloud-modules/terraform-huaweicloud-evs/modules/evs-volume"

  ...
}
```

## Contributing

Report issues/questions/feature requests in
the [issues](https://github.com/terraform-huaweicloud-modules/terraform-huaweicloud-evs/issues/new)
section.

Full contributing [guidelines are covered here](.github/how_to_contribute.md).

## Requirements

| Name                 | Version   |
|----------------------|-----------|
| Terraform            | >= 1.3.0  |
| Huaweicloud Provider | >= 1.73.0 |

## Modules

No module.

## Resources

No resource.

## Inputs

No input.

## Outputs

No output.
