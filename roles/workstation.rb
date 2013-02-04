name 'workstation'
description 'Mac OS X systems used as workstations'

run_list(
  'role[mac]',
  'recipe[workstation]',
  'recipe[workstation::hipchat]',
  'recipe[workstation::knox]',
  'recipe[1password]'
)

