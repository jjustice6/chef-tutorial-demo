require 'serverspec'

# this spec_helper doesn't let you use most of the nifty helpers
# So we're kinda stuck doing this the hard way with rbconfig.
# Cross-platform code needs to look like this.
# You can just do "set :backend, :exec"
# if it's not going to have to run on Windows.
# Windows-only code can use "set :backend, :cmd".

require 'rbconfig'
if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwinw|winrm/
  set :backend, :cmd
else
  set :backend, :exec
end