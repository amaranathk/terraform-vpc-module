locals {
    common_tags = {
        Project = var.project_name
        Terraform = "True"
    }
    common_name_suffix = "${var.project_name}-${var.environment}"
    az_names = slice(data.aws_availability_zones.available.names, 0, 2)
    vpc_id = data.aws_vpc.default.id
}