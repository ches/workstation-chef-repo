name 'workstation'
description 'Mac OS X systems used as workstations'

default_attributes(
  :virtualbox => {
    :url => 'http://download.virtualbox.org/virtualbox/4.2.6/VirtualBox-4.2.6-82870-OSX.dmg'
  }
)

run_list(
  'role[mac]',
  'recipe[workstation]',
  'recipe[workstation::hipchat]',
  'recipe[workstation::knox]',
  'recipe[1password]',
  'recipe[virtualbox]'
)

