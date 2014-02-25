name		"webserver"
description	"Role webserver"
run_list(
	"recipe[base]",
	"recipe[tomcat]",
	"recipe[chef-client]"
)
override_attributes(
 "chef_client" => {
 	"interval" => "10"
 },	
 "tomcat" => {
 	"base_version" => "7",
 	"port" => "8080"
 }
)