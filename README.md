# ultimate-terraform-folder-structure

# Description

The repository shows how Terraform project can be structured. For more visit the blog article - https://medium.com/schibsted-engineering/ultimate-terraform-project-structure-9fc7e79f6bc6

# Usage

Deploying temporary review environment using Terraform workspaces:

```
$ tfenv install
$ tfenv use
$ cd infrastructure/environments/rev
$ terraform init
$ terraform workspace new foo-bar-1
$ terraform apply
$ terraform destroy
$ terraform workspace select default
$ terraform workspace delete foo-bar-1
```

