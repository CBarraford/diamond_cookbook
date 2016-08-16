# Install the haproxy collector config

include_recipe 'diamond::default'

# load the data bag
databag = Chef::EncryptedDataBagItem.load('passwords', 'haproxy')

collector_config 'HAProxyCollector' do
  perms node['diamond']['collectors']['config_perms']
  owner        node['diamond']['owner']
  group        node['diamond']['group']
  path         node['diamond']['collectors']['HAProxyCollector']['path']
  stats_uri    node['diamond']['collectors']['HAProxyCollector']['stats_uri']
  stats_user   databag['standard']['stats_user']
  stats_pass   databag['standard']['stats_pass']
end
