class pound::params {

  $conf        		= '/etc/pound/pound.cfg'
  $user        		= 'www-data'
  $group       		= 'www-data'
  $log_level   		= 1
  $alive_check 		= 30
  $socket      		= '/var/run/pound/poundctl.socket'
  $ssl_acceleration = false
  $ssl_engine  		= '<hw>'
  $http_verbs		= 'GET, POST, HEAD, PUT, DELETE'

}
