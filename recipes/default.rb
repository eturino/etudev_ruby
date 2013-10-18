#
# Cookbook Name:: etudev_ruby
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"
include_recipe "rbenv::ohai_plugin"

req_rubies = node[:etudev_ruby][:rubies].to_a.uniq
req_gems =  node[:etudev_ruby][:gems].to_a.uniq

req_rubies.each do |myruby|

  rbenv_ruby myruby

  req_gems.each do |mygem|
    rbenv_gem mygem do
      ruby_version myruby
    end
  end
end
