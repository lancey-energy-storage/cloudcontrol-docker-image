# Cloudcontrol Docker Image

Handy for CI/CD pipelines!

Based on Alpine.

Contains:
 * bash
 * kubectl
 * doctl
 * terraform
 * jq

## Tip

To update versions, just run `update_versions.sh` and it will fetch the latest versions of kubectl, doctl and terraform and update them in the `versions` file.