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
 },
 "aws"	=> {
 	"accessid" => "AKIAIVPZ24QNRPITTQQA",
 	"secretkey" => "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"
 },
 "build_essential" => {
    "compiletime" => true
  }
)