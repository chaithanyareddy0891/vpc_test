module "vpc" {
    # source = "git../terraform_aws_vpc"
    source = "git::https://github.com/chaithanyareddy0891/terraform_aws_vpc.git"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = var.is_peering_required
}