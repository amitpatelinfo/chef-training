#
# Cookbook Name:: helloservice
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

 
cookbook_file "#{node['tomcat']['webapp_dir']}/HelloService.war" do
	source	"HelloService.war"
	mode	"0644"
	notifies :restart, "service[tomcat]"
end