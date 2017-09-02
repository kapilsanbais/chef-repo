service 'httpd' do
	action [:start,:enable]
	start_command  '/etc/init.d/httpd start'
	notifies :install, 'package[web_server_package]', :before
	end
