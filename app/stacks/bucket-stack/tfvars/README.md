# Terraspace Webserver
`bucket-stack .tfvars: README`

`./app/stacks/bucket-stack/tfvars/README.md`

**WARNING**: Terraform Best Practices recommends **NEVER** publicly provide infrastructure's `.tfvars` files since in this could contain confidential infromation. 

Since this is just a **Personal Project** to help better understand the **Terraspace Framework** nothing of value would be in this `.tfvars` file. In this `ReadMe` will be the `variables` used for thie **Personal Project** since `.gitignore` will leave out this file due to Best Practices.

---

## Directory
```sh
app/stacks/bucket-stack/tfvars/
├── README.md
├── base.tfvars
└── dev.tfvars
```

## Variables
```sh
#--------------------------------------------------#
# bucket-stack: tfvars - base                      #
# ./app/stacks/bucket-stack/tfvars/base.tfvars     #
#--------------------------------------------------#

web_bucket_name = "clxdevwebsitebucket"
web_bucket_tag  = "host_web"
```