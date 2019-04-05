# Redshift Cluster with S3 bucket
This is a Terraform module that demonstrates how to use Terraform to create:
* An AWS Redshift Cluster
* An S3 bucket that the Redshift cluster will have access to
* An IAM role and role policy

It builds upon [the great work](https://github.com/terraform-community-modules/tf_aws_redshift) of [Quentin Rousseau](https://github.com/kwent).

## Usage
Use the module in your Terraform project (something like your `main.tf`) using the sample code below:
```
module "redshift_with_s3" {
  source = "github.com/aimtheory/aws_redshift_with_s3"

  redshift_cluster_identifier = "your_redshift_cluster_identifier_here"
  redshift_cluster_node_type = "your_redshift_cluster_node_type_here"
  redshift_cluster_number_of_nodes = "your_redshift_cluster_number_of_nodes_here"
  redshift_cluster_database_name = "your_redshift_cluster_database_name_here"
  redshift_cluster_master_username = "your_redshift_cluster_master_username_here"
  redshift_cluster_master_password = "your_redshift_cluster_master_password_here"
  public_subnets = "a_list_of_your_subnet_ids_here"
  vpc_id = "your_vpc_id_here"
  vpc_cidr = "your_vpc_cidr_here"
  redshift_bucket_name = "your_redshift_bucket_name_here"
}
```
Then go through the normal Terraform workflow to create a plan and apply it.
```
terraform init
terraform plan -out plan.out
terraform apply plan.out
```
