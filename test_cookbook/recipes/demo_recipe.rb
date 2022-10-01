#
# Cookbook:: test_cookbook
# Recipe:: demo_recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.


#package 'tree' do
 # action :install
#end

#installing multiple pacakge

#['httpd','mariadb-server','mysql','unzip','git','vim'].each do |p|
 # package p do
  #  action :install
 # end
#end

%w(httpd mariadb-server unzip git vim mysql).each do |p|
  package p do
    action :install
  end 
end

#creating multiple users

%w(user1 user2 user3 user4 user5).each do |p|
  user p do
    action :create
  end 
end

file 'myfile' do
  content "This is my second recipe, I am testing on 1st October"
  owner 'root'
  group 'root'
end
