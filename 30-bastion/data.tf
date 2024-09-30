data "aws_ssm_parameter" "bastion_sg_id" {
  #/expense/dev/bastion_sg_id
  name = "/${var.project_name}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  #/expense/dev/public_subnet_ids
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
}

data "aws_ami" "joindevops" {

	most_recent      = true
	owners = ["905418301346"]
	
	filter {
		name   = "name"
		values = ["RHEL-9-DevOps-Practice"]
	}
	
	filter {
		name   = "root-device-type"
		values = ["ebs"]
	}

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}