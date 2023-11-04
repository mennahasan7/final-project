# Create Public Subnets
resource "aws_subnet" "public_subnet" {
  count                   = 2
  vpc_id                  = aws_vpc.project-vpc.id
  availability_zone       = var.availability_zones[count.index]
  cidr_block              = var.pub_subnet[count.index]
  map_public_ip_on_launch = "true"

  tags = {
    Name = "project-public-subnet"
    "kubernetes.io/role/elb"     = "1" //This tag is used by the EKS service to identify and manage subnets used for ELB resources associated with the cluster.
    "kubernetes.io/cluster/project-eks" = "owned" //This tag assists in identifying and managing resources related to a particular EKS cluster.
  }
}

# Create Private Subnets
resource "aws_subnet" "private_subnet" {
  count             = 2
  vpc_id            = aws_vpc.project-vpc.id
  availability_zone = var.availability_zones[count.index]
  cidr_block        = var.priv_subnet[count.index]

  tags = {
    Name = "project-private-subnet"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/project-eks"      = "owned"
  }
}



