name 		"loadbalancer"
description "Load Balancer role"
run_list(
 "recipe[base]"
)
override_attributes(
 "apache" => {
 	"port" => "80"
 }
)