module "webserver_cluster" {
  source = "github.com/biaandersson/tf-up-n-running/tree/staging/modules/services/webserver-cluster"

  # Required parameters
  db_remote_state_bucket = "(bucket name)"
  db_remote_state_key    = "stage/database/mysql/terraform.tfstate"
  cluster_name           = "webserver-cluster-staging"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}

resource "aws_security_group_rule" "allow_testing_inbound" {
  security_group_id = module.webserver_cluster.alb_security_group_id

  type        = "ingress"
  from_port   = 1234
  to_port     = 1234
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
