require 'serverspec'

# This is just for the Windows guys!
# this spec_helper thing doesn't let you use most of the nifty helpers
# so we're kinda stuck doing this the hard way
# The rest of you can just do "set :backend, :exec"
# if it's not a cross platform thing

require 'rbconfig'
if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwinw|winrm/
  set :backend, :cmd
else
  set :backend, :exec
end