name 		"loadbalancer"
description "Load Balancer role"
run_list(
 "recipe[base]",
 "recipe[chef-elb]"
)
default_attributes(
 "apache" => {
 	"port" => "80"
 },
 "aws"	=> {
 	"accessid" => "AKIAIVPZ24QNRPITTQQA",
 	"secretkey" => "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"
 }
)