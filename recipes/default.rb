# Default recipe for the chef cookbook

file '/etc/hello' do
  action :create
  content 'Hello world'
end

#file '/etc/hello' do
#  action :create
#  content node['demo']['greeting']
#end

#cookbook_file '/etc/hello' do
#  action :create
#  source 'hello.txt'
#end