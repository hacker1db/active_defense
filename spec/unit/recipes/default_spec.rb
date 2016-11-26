#
# Cookbook Name:: active_defense
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'
cribe 'active_defense:default' do 
	context 'when all attributes are default, on ubuntu ' do
	  let(:chef_run) do ChefSpec::ServerRunner.new(platfrom: 'ubuntu', version: '16.04').converge(described_recipe)
  end
end
