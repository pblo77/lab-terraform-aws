cuenta           = "cuenta"
proyecto         = "proyecto"
key_name         = "nombrekeypair"
private_key_path = "./nombrekeypair.pem"
vpc_id           = "idvpc"

tags = {
  "tag1" = "valor"
}

ec2_config = {
  instance_1 = {
    role_name     = "nombredelrolacrear"
    ami           = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    subnet_id     = "subnetid"
    policy_arn    = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    policy_arn1   = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
    tagsec2 = {
      Name     = "tags"
      "a-tag1" = "tags"
    }
    root_block_device = {
      volume_size = 80
      volume_type = "gp3"
      iops        = 3000
    }
  }
}

sg_config = {
  instance_1 = {
    name                 = "ause-sg-cuenta-proyecto"
    description          = "Descripcion para grupo de seguridad"
    vpc_id               = "vpc-id"
    projectsecuritygroup = "sgproyect"
    ingress_rules = [
      { from_port = 3389, to_port = 3389, protocol = "tcp", cidr_blocks = ["10.0.0.0/8"] },
      { from_port = 0, to_port = 65535, protocol = "tcp", cidr_blocks = ["10.215.3.51/32"] }
    ]
  }
}
