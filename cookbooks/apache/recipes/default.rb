#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.



package 'web_server_package' do
	action :install
	package_name   node['web']['package']
	end 

include_recipe 'apache::user'
