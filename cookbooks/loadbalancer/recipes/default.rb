#
# Cookbook Name:: loadbalancer
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

elb_load_balancer "loadbalancer" do
	aws_access_key			"#{node['aws']['accessid']}"
	aws_secret_access_key	"#{node['aws']['secretkey']}"
	region					"us-east-1"
	search_query			"role:webserver"
	action					:create
end