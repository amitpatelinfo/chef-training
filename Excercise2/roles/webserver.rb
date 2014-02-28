name		"webserver"
description	"Role webserver"
run_list(
	"recipe[base]",
	"recipe[tomcat]",
	"recipe[helloservice]"
)
override_attributes(
 "tomcat" => {
 	"base_version" => "7",
 	"port" => "8080"
 }
)