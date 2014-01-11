#
# http_verbs            1 (default) accept only standard HTTP requests (GET, POST, HEAD).
#                       2 additionally allow extended HTTP requests (PUT, DELETE).
#                       3 additionally allow standard WebDAV verbs (LOCK, UNLOCK, PROPFIND, PROPPATCH, SEARCH, MKCOL, MOVE, COPY, OPTIONS, TRACE, MKACTIVITY, CHECKOUT, MERGE, REPORT).
#                       4 additionally allow MS extensions WebDAV verbs (SUBSCRIBE, UNSUBSCRIBE, NOTIFY, BPROPFIND, BPROPPATCH, POLL, BMOVE, BCOPY, BDELETE, CONNECT).
#                       5 additionally allow MS RPC extensions verbs (RPC_IN_DATA, RPC_OUT_DATA).
#
class pound::params {

  $conf                 = '/etc/pound/pound.cfg'
  $user                 = 'www-data'
  $group                = 'www-data'
  $log_level            = 1
  $alive_check          = 30
  $socket               = '/var/run/pound/poundctl.socket'
  $ssl_acceleration     = false
  $ssl_engine           = '<hw>'
  $http_verbs           = 2
  $threads              = 128
  $dynscale             = 0
  $ssl_honorcipherorder = 1
  $ssl_ciphers          = 'ECDHE-RSA-AES256-SHA384:AES256-SHA256:RC4:HIGH:!MD5:!aNULL:!EDH:!AESGCM'

}
