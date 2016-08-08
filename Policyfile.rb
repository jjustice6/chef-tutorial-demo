name 'demo'
default_source :community

cookbook 'demo', path: '.'

run_list %w(chef-sugar::default demo::default)