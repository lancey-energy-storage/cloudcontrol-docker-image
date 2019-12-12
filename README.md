# Cloudcontrol Docker Image

Handy for CI/CD pipelines!

Contains:
 * bash
 * kubectl
 * doctl
 * terraform
 * jq

## Tags

| tag | what it is |
| ---- | ---- |
| latest, alpine | image is based on alpine (~130mB) |
| docker | image is based on docker image so it contains the docker cli (~350mB) |

## Tip

To update versions, just run `update_versions.sh` and it will fetch the latest versions of kubectl, doctl and terraform and update them in the `versions` file.