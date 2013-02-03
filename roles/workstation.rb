name 'workstation'
description 'Mac OS X systems used as workstations'

run_list(
  'role[mac]',
  'recipe[workstation]',
  'recipe[1password]'
)

