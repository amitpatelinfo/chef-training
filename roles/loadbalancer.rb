name 		"loadbalancer"
description "Load Balancer role"
run_list(
 "recipe[base]",
 "recipe[build-essential]",
 "recipe[elb]",
 "recipe[loadbalancer]"
)
default_attributes(
 "apache" => {
 	"port" => "80"
 }
 "build_essential" => {
    "compiletime" => true
  }
)