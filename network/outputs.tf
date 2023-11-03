output pub_subnets {
    value = aws_subnet.public_subnet
}

output priv_subnets {
    value = aws_subnet.private_subnet
}

output vpc_id {
    value = aws_vpc.main.id
}

output vpc_cidr {
    value = aws_vpc.main.cidr_block
}

