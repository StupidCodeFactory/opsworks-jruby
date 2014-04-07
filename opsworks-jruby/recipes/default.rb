#
# Cookbook Name:: opsworks-jruby
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"

rbenv_ruby "jruby-1.7.11" do
  global true
end

%w(bundler rake).each do |g|
  rbenv_gem g do
    ruby_version "jruby-1.7.11"
  end
end
