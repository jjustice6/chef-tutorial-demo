require 'spec_helper'

describe file('/etc/hello') do
  it { should be_file }
  it { should contain 'Hello' }
end
