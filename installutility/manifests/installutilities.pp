class installutility::installutilities {
  each($installutility::utilities) |$utility| {
      #notify {"$utility":}
        exec {"Install $utility":
            command => "installUtility install $utility --acceptLicense",
            path => '/u01/wlp/bin:/bin:/usr/bin',
            onlyif => "test -f ${installutility::installutilitypath}",
       }
   }
}
