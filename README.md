# Alfred Terraform Doc

A Terraform doc helper, helps you quickly find and open the doc page of a provider or resource.

## Usage

1. Type `td [provider/resource name]` in Alfred
   -  `td vault`
      => <https://registry.terraform.io/providers/hashicorp/vault/latest/docs>
   -  `td vault-mount`
      => <https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount>
2. You can also configure a shortcut for it. It would be more convenient to use.

## Installation

1. Go to [releases](https://github.com/beviz/alfred-terraform-doc/releases) page to download.

## Known Issues

1. Since the root URL of providers between HashiCorp officials and 3rd parties are different. To avoid impacting the performance and I haven't found a reliable API to get all official providers. I listed all of them in the script. If any new providers are added, you can add them by changing the script codes. (If you find a good way to keep them updated, please help contribute.)
  1. double click the script stage
  2. add the new provider name to `OFFICIAL_PROVIDERS`

