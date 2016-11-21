#
# Cookbook Name:: active_defense
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
directory '/tools' do
  action :create
end
package 'git' do 
  action :install
end
git 'https://github.com/trustedsec/ptf.git' do
  destination '/tools'
  revision 'master'
  repository 'https://github.com/trustedsec/ptf.git'
  action :checkout
end
