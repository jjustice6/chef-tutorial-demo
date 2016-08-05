# Default attributes for the Chef tutorial

if node.platform_family?('rhel')
  default['demo']['greeting'] = 'Hello, Centosians!'
elsif node.platform_family?('debian')
  default['demo']['greeting'] = 'Hello, Ubuntunians!'
end