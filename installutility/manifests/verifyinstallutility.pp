class installutility::verifyinstallutility {
if $installutility::checkinstallutility {
  exec { "Check":
    command => "true",
    path    =>  ["/usr/bin","/usr/sbin", "/bin"],
    onlyif  => "test -d ${installutility::installutilitypath}",
    #notify => Class['installutility::installutilities'],
  }
}
#include installutility::installutilities
}
