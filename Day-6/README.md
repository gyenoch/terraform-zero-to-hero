### Create new Terraform Workspaces with the following commands ###
terraform workspace new dev
terraform workspace new staging
terraform workspace new prod

### Select a new Terraform Workspace with the following commands ###
terraform workspace select dev
terraform workspace select staging
terraform workspace select prod

### To identify your current workspace use the command below
terraform workspace show

### Running terraform Apply with a tf.vars file ###
Create multiple tf.vars for files for various environment and select the one to use with the following commands

terraform apply -var-file=prod-tfvars
terraform apply -var-file=dev-tfvars
terraform apply -var-file=staging-tfvars

### Running terraform Destroy with a tf.vars file ###
terraform destroy -var-file=prod-tfvars
terraform destroy -var-file=dev-tfvars
terraform destroy -var-file=staging-tfvars

### Running terraform Init with a tf.vars file ###
terraform init -var-file=prod-tfvars
terraform init -var-file=dev-tfvars
terraform init -var-file=staging-tfvars

### Running terraform Validate with a tf.vars file ###
terraform validate -var-file=prod-tfvars
terraform validate -var-file=dev-tfvars
terraform validate -var-file=staging-tfvars


### Running terraform Plan with a tf.vars file ###
terraform plan -var-file=prod-tfvars
terraform plan -var-file=dev-tfvars
terraform plan -var-file=staging-tfvars