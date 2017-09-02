directory "sanbais directory" do
	path "/var/www/sanbais"
	action :create
	end 

#cookbook_file "/etc/httpd/conf.d/linux.conf" do
#		source "sanbais.conf"
#		action	:create
#		notifies :restart, 'service[httpd]'
#		end 


template "/etc/httpd/conf.d/#{node['web']['file']}" do
		source "apache.erb"
		variables(
			port: node['web']['port'],
			websitename: node['web']['name'],
			webdir:		node['web']['domain'],
			webip:	node['ipaddress']
			)
		action	:create
		end 
