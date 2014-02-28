Chef Training
=============

Chef Server Configuration (Hosted Chef)
-------------------------

1) Signup using : https://preview.opscode.com/signup

2) Download your organization validation key. (<organization>-validator.pem)

3) Downlaod the client permission file. (<username>.pem)

4) Create knife.rb using 
	- Generate knife config from chef server.
					OR
	- from the workstation you can generate using command "knife -configure"


Workstation Setup
-------------------------

1) clone default chef-repo using "git clone git@github.com:opscode/chef-repo.git"

2) Go to the chef-repo and remove the .git folder.

3) Install knife using : http://www.getchef.com/chef/install/

4) Create a .chef directory in your downloaded chef-repo directory and put below files in it.

	- <username>.pem
	- <organization>-validator.pem
	- knife.rb


Node(System) Setup
-------------------------

1) After creating a cookbook bootstrap your node using :

	Knife bootstrap FQDN --sudo –x <username> -P <password> –r ‘recipe[XXXX]’

2) Update Node (from workstation)

	knife ssh name:<node_name> -x <username> -P <password> 'sudo chef-client'

3) Update Node (from Node)

	sudo chef-client 

4) If you want your node will automatically execute chef-client in every x minute then install the chef-client cookbook and install that to the node.


Exercise 1 :
------------

What we want :
	- Want to install apache in the machine and add the sample index.html.
	- Change configuration and update node.

How to do that :
	- Create a first cookbook "apache".
	- Bootstrap first node using knife.
	- Create index.html in file and update the recipe to put index.html in node location /var/www/.
	- Update the node.
	- Check the effect.

Exercise 2 :
------------

What we want :
	- You have an infrastructure with Load Balancer & Webserver now if you add another Webserver then your load balancer should update with that new node.

How to do that :
	- Create 2 Roles (Loadbalancer & Webserver)
	- Bootstrap 2 nodes with webserver and loadbalancer role.
	- Check the loadbalancer from AWS and see if that server has webserver role entry.
	- Add another node as a webserver role.
	- Now conform that your load balancer should have entry to new node.


Exercise 3 : (chef-solo)
------------------------

What we want :
	- Install tomcat & java cookbook in the Node machine using chef-solo.

How to do that :
	- Download the cookbook from the https://github.com/amitpatelinfo/chef-solo
	- Connect to the node and install chef-solo.
	- Execute chef-solo in node and make sure your webpage running on local machine.
	- You can verify by curl localhost:8080
