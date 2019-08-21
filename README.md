# TERRARDS

A simple [Aurora RDS](https://aws.amazon.com/rds/aurora/?nc1=h_ls) PoC provisioned by [Terraform](https://www.terraform.io/intro/index.html)

## Setting up 
- Configure your default values in [variables](variables.tf)
- Configure the RDS MasterPassword in [secrets](secrets.tfvars)

## Building the infrastructure

```sh
AWS_PROFILE=your_profile terraform apply -var-file=secrets.tfvars
```

You are building the next resources:
- A security group which will be able to allow access through 5432 port and your private cidr.
- A subnet group where your rds intance will be allocated.
- A Parameter Store where we will save the master password of RDS (`/environment/database/password/master`).
- A RDS Cluster and RDS intances.

