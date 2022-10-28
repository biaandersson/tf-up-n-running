module "webserver_cluster" {
  source                 = "github.com/biaandersson/tf-up-n-running/tree/production/modules/services/webserver-cluster"
  cluster_name           = "sportsbook-sbapi-cluster"
  db_remote_state_bucket = "sb-cluster-bucket"
  db_remote_state_key    = "prod/db/mysql/terraform.state"
  instance_type          = "t3.micro"
  max_size               = 2
  min_size               = 10
}

resource "aws_autoscaling_schedule" "scale_out_during_business_hours" {
  scheduled_action_name  = "scale-out-during-business-hours"
  autoscaling_group_name = module.webserver_cluster.asg_name

  min_size         = 2
  max_size         = 10
  desired_capacity = 10
  recurrence       = "9 0 * * *"
}

resource "aws_autoscaling_schedule" "scale_in_at_night" {
  scheduled_action_name  = "scale-in-after-business-hours"
  autoscaling_group_name = module.webserver_cluster.asg_name

  min_size         = 2
  max_size         = 10
  desired_capacity = 2
  recurrence       = "0 17 * * *"
}
