#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#



package "httpd" do 
	action	:install
	end

node["httpd"]["sites"].each do |sitename, data|
	document_root = "/var/www/#{sitename}"

	directory document_root  do 
		mode	"0755"
		recursive 	true
	end 

	template "/etc/httpd/conf.d/#{sitename}.conf" do
		source	"httpd.erb"
		variables(
			documentroot: "document_root",
			port:  data["port"],
			websitename: data["domain"]	
		)
		notifies  :restart, "service[httpd]"
	end

end











service "httpd"do
	action	[:enable,:start]
	end 
