#
# Cookbook Name:: loadbalancer
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

elb_load_balancer "loadbalancer" do
	aws_access_key			ENV['AWS_ACCESS_KEY_ID']
	aws_secret_access_key	ENV['AWS_SECRET_ACCESS_KEY']
	region					"us-east-1"
	search_query			"role:webserver"
	listeners             [
						    {
						      "InstancePort"     => 80,
						      "Protocol"         => "HTTP",
						      "LoadBalancerPort" => 8080
						    }
						  ]
	action					:create
end