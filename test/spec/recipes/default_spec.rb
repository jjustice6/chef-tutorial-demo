# This is a Chefspec test. It doesn't require spinning up Test Kitchen.
# This makes it a lot faster and more suitable to unit tests.
# See https://github.com/sethvargo/chefspec

require_relative '../spec_helper'

describe_recipe 'demo::default' do
  cached(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }
  before {
    allow(Chef::Config).to receive(:[]).and_call_original
    allow(Chef::Config).to receive(:[]).with(:client_key).and_return('')
  }

  context 'with default attributes' do
    it { expect(chef_run).to include_recipe('demo::default') }
    it { expect(chef_run).to render_file('/etc/hello').with_content(/Hello/)}
  end
end
