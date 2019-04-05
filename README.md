# Redshift Cluster with S3 bucket
This is a Terraform module that demonstrates how to use Terraform to create:
* An AWS Redshift Cluster
* An S3 bucket that the Redshift cluster will have access to
* An IAM role and role policy

It builds upon [the great work](https://github.com/terraform-community-modules/tf_aws_redshift) of [Quentin Rousseau](https://github.com/kwent).

## Usage
In your own Terraform project, use the syntax below to:
1. Set the values statically
OR
2. Set up variables in your own `terraform.tfvars` file (as shown below)
```
module "redshift_with_s3" {
  source = "github.com/aimtheory/aws_redshift_with_s3"

  redshift_cluster_identifier = "${var.redshift_cluster_identifier}"
  redshift_cluster_node_type = "${var.redshift_cluster_node_type}"
  redshift_cluster_number_of_nodes = "${var.redshift_cluster_number_of_nodes}"
  redshift_cluster_database_name = "${var.redshift_cluster_database_name}"
  redshift_cluster_master_username = "${var.redshift_cluster_master_username}"
  redshift_cluster_master_password = "${var.redshift_cluster_master_password}"
  redshift_cluster_wlm_json_configuration = "${var.redshift_cluster_wlm_json_configuration}"
  public_subnets = "${var.public_subnets}"
  vpc_id = "${var.vpc_id}"
  vpc_cidr = "${var.vpc_cidr}"
  redshift_role_arn = "${var.redshift_role_arn}"
  redshift_bucket_name = "${var.redshift_bucket_name}"
}
```
Then go through the normal Terraform workflow to create a plan and apply it.
