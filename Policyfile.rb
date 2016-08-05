name 'demo'
default_source :community

cookbook 'demo', path: '.'

run_list 'demo::default'