module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "${var.project_name}-${var.environment}-bastion"

  instance_type          = "t3.micro"
  vpc_security_group_ids = data.aws_ssm_parameter.bastion_sg_id.value
  #convert a StingList to List and select 1st element of the List
  subnet_id              = element (split(",", data.aws_ssm_parameter.public_subnet_ids.value), 0)
# subnet_id = local.public_subnet_id
  ami = data.aws_ami.ami_info.id
  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-bastion"
    }
  )
}