# learn-terraform

Terraform is a very powerful Infrastructure As A Code Tool which can be managed via HCL ( Hashicorp Language )

> Points to be noted when dealing terraform!!!
    1) Terraform only recognized the files ending with *.tf or *.auto.tfvars or *.tfvars as the terraform files 
    2) We can either write all the terraform code in a single file or in multiple-files. 
    3) Terraform loads these files in the alphabetical order and compiles them in a logical approach.
    4) Terraform is all about blocks  { }

> In terraform, we typically use these 4 commands:  

    1) terraform init 
    2) terrform plan 
    3) terraform apply
    4) terraform destroy

> How to install terraform ?
    `https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform`
    
> Unline ansible/yaml, HCL Terraform is not indendation specific. But for look and feel, we make sure to follow the standard spacing