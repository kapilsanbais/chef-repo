service 'httpd' do
	action [:start,:enable]
	start_command  '/etc/init.d/httpd start'
	notifies :install, 'package[web_server_package]', :before
	end 


package 'web_server_package' do
	action :install
	package_name   'httpd'
	end 

	

file 'web server file' do 
	path '/var/www/html/index.html'
	content 'welcome to sanbais technical and DevOps training'
	notifies :restart, 'service[httpd]', :immediate
	end 
