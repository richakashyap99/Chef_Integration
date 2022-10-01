#
# Cookbook:: apache_cookbook
# Recipe:: apache_recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content " <h1> Hello Richa..!Hope you are doing good!!!! Wish you all the best..!! Good Night </h1>"
  action :create
end

service 'httpd' do
  action [:enable, :start]
end
