#
# Cookbook:: apache_cookbook
# Recipe:: sample_recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#

file '/home/ec2-user/robofile' do
  content "This is to get the Attributes, of system
  HOSTNAME : #{node['hostname']}
  IPADDRESS : #{node['ipaddress']}
  CPU : #{node['cpu']['0']['mhz']}
  MEMORY : #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
