#
# Cookbook Name:: mysql-custom
# Recipe:: default
#
# Copyright 2014, Ryo Ogata
#
# All rights reserved - Do Not Redistribute
#

case node['platform']
when "centos","ubuntu"
  cookbook_file "/etc/mysql/conf.d/encoding.cnf" do
    source "encoding.cnf"
  end
when "amazon"
  cookbook_file "/etc/mysql/conf.d/encoding.cnf" do
    source "encoding55.cnf"
  end
end

