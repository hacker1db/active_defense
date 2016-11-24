#
# Cookbook Name:: active_defense
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
directory '/home/vagrant/tools' do
  action :create
end
package 'git' do
  action :install
end
directory '/home/vagrant/tools/ptf' do 
  action :create 
end
git 'https://github.com/trustedsec/ptf.git' do
  destination '/home/vagrant/tools/ptf'
  revision 'master'
  repository 'https://github.com/trustedsec/ptf.git'
  action :checkout
end
directory '/home/vagrant/tools/bro' do
  action :create
end 
git 'git://git.bro.org/bro' do
  destination '/home/vagrant/tools/bro'
  revision 'master'
  repository 'git://git.bro.org/bro'
  action :checkout
end
directory '/home/vagrant/tools/adhd' do 
  action :create 
end 
script 'install_ADHD' do
  interpreter 'bash'
  user 'vagrant'
  cwd '/tools/adhd'
  code <<-EOH
  bash -c "$(curl -sL https://raw.githubusercontent.com/adhdproject/buildkit/master/adhd-install.sh)
  EOH
end
