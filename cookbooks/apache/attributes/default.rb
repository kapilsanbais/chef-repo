default['web']['file'] = "linux.conf"
default['web']['port'] = "80"
default['web']['domain'] = "linux"
default['web']['name'] = "www.linux.com"


if node['platform'] == "amazon"
	default['web']['package'] = "httpd"
elsif node['platform'] == "ubuntu"	
	default['web']['package'] = "apache2"
else
	puts "Server not supported"
end 
