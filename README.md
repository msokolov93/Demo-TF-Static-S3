# tf-static-s3

Install Terraform
```
wget https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_amd64.zip
unzip terraform_0.15.4_linux_amd64.zip
rm terraform_0.15.4_linux_amd64.zip
echo $"export PATH=\$PATH:$(pwd)" >> ~/.bash_profile
source ~/.bash_profile
```

Installation
```
mkdir terraform-s3-website
cd terraform-s3-website
wget https://github.com/msokolov93/tf-static-s3/archive/refs/heads/main.zip
unzip main.zip
rm main.zip
```

Setup

In main.tf file:
- add key
- add private key
- change bucket name

In policy.json file:
- change bucket name

Run the Solution
```
terraform init
terraform plan
terraform apply
```
