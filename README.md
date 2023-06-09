# Terraspace Static Website -- S3

This is a Terraspace project. It contains code to provision Cloud infrastructure built with [Terraform](https://www.terraform.io/) and the [Terraspace Framework](https://terraspace.cloud/).

----

## Getting Started

The idea of this project is to build a Static Webpage using Terraform Infrastructure.

----

## Learning Path

- Use `Bucket Policy` to grant the proper access to the bucket in order to host a static website.
```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::your-bucket-name/*"
    }
  ]
}
```

----

## Initialize
To initialize all the infrastructure stacks:

    AWS_PROFILE=<name-of-profile> terraspace all init


## AWS Connect Test
To test the AWS Connection:

    AWS_PROFILE=<name-of-profile> aws sts get-caller-identity

## Deploy

To deploy all the infrastructure stacks:

    AWS_PROFILE=<name-of-profile> terraspace all up

To deploy individual stacks:

    AWS_PROFILE=<name-of-profile> terraspace up demo # where demo is app/stacks/demo

----

## Terrafile

To use more modules, add them to the [Terrafile](https://terraspace.cloud/docs/terrafile/).

----

## Project Structure

```
terraspace-static-website-s3/
├── Gemfile
├── Gemfile.lock
├── README.md
├── Terrafile
├── app
│   ├── modules
│   │   ├── bucket-base
│   │   │   ├── main.tf
│   │   │   ├── outputs.tf
│   │   │   ├── static
│   │   │   │   ├── error.html
│   │   │   │   └── index.html
│   │   │   └── variables.tf
│   │   └── network-base
│   │       ├── main.tf
│   │       ├── outputs.tf
│   │       └── variables.tf
│   └── stacks
│       ├── bucket-stack
│       │   ├── main.tf
│       │   ├── outputs.tf
│       │   ├── tfvars
│       │   │   ├── README.md
│       │   │   └── base.tfvars
│       │   └── variables.tf
│       └── network-stack
│           ├── main.tf
│           ├── outputs.tf
│           ├── tfvars
│           │   └── base.tfvars
│           └── variables.tf
└── config
```

----

## Documentation

- recieving error message:
```
Error: Error putting S3 policy: AccessDenied: Access Denied
        status code: 403, request id: M67Y9YS7D83JY647, host id: zFXnydoM7eetPFoTze69y6I9aSLt0h70J9cZyknID/L46BvNuZ/FZHR2dj8Rrq4xihLHEozCcjA=
```