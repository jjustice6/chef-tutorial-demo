# Default recipe for the chef cookbook

# A file with a simple amount of content
file '/etc/hello' do
  action :create
  content 'Hello world'
end

# A file with variable content
#file '/etc/hello' do
#  action :create
#  content node['demo']['greeting']
#end

# A long file
#cookbook_file '/etc/hello' do
#  action :create
#  source 'hello.txt'
#end

# A long file with variable content
#template '/etc/hello' do
#  action :create
#  source 'hello.erb'
#  variables ({:hello_var => node['demo']['greeting'], 
#              :magic_word => 'Abracadabra'}) # This is a ruby hash.
#end

# Install a package with a different name based on the OS, using standard package management
#if ubuntu?
#  package 'emacs24-nox'
#elsif centos?
#  package 'emacs-nox'
#else
#  # no package for you
#end

# Set up a user!
#user 'chef_user' do
#  password 'PlaintextPassword' # please don't do this
#  shell '/bin/bash'
#end