# Executes a command
exec { 'pkill killmenow':
  path => '/usr/bin:/usr/sbin:/bin'
}
