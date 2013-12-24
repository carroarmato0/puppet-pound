class pound (
  $log_level    = $pound::params::log_level,
  $alive_check  = $pound::params::alive_check,
  $threads      = $pound::params::threads,
  $jail         = '',
) inherits pound::params {

  include pound::package
  include pound::config
  include pound::service

}