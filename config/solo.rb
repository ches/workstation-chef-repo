require 'pathname'

chef_root = Pathname.new(__FILE__).dirname.parent.expand_path
var = chef_root + 'var'

cookbook_path    chef_root + 'cookbooks'
role_path        chef_root + 'roles'
data_bag_path    chef_root + 'data_bags'

# Override defaults in /var that aren't user-writable
file_cache_path  var + 'cache'
file_backup_path var + 'backup'
checksum_path    file_cache_path + 'checksums'
# json_attribs     chef_root + 'config' + "#{node_name}.json"

cache_options({
  :path => checksum_path,
  :skip_expires => true
})

