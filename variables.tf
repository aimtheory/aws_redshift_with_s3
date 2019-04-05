variable "redshift_cluster_identifier" {}
variable "redshift_cluster_node_type" {}
variable "redshift_cluster_number_of_nodes" {}
variable "redshift_cluster_database_name" {}
variable "redshift_cluster_master_username" {}
variable "redshift_cluster_master_password" {}
variable "redshift_cluster_wlm_json_configuration" {
  default = "[{\"query_concurrency\": 5}]"
}
variable "public_subnets" {
  type = "list"
}
variable "vpc_id" {}
variable "vpc_cidr" {
  type = "list"
}
variable "redshift_bucket_name" {}
variable "charge_code" {}
