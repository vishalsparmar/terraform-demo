provider "aws" {
    region = "eu-west-2"
}
resource "aws_instance" "EC2Instance" {
    ami = "ami-02432e52f268a3dd9"
    instance_type = "t2.medium"
    availability_zone = "eu-west-2a"
    tenancy = "default"
    subnet_id = "subnet-fff"
    ebs_optimized = false
    vpc_security_group_ids = [
        "sg-xx"
    ]
    source_dest_check = true
    root_block_device {
        volume_size = 8
        volume_type = "gp2"
        delete_on_termination = true
    }
    iam_instance_profile = "test-sqs-connectivity"
    tags = {
        Name = "test-terraform"
        NAME = "test-terraform"
        owner = "operations"
        data-compliance = "none"
        environment = "test"
        cost-centre = "114773"
    }
}