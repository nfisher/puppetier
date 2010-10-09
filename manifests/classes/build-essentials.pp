class build-essentials {
	$reqd_pkg = ["make","gcc","gcc-c++","autoconf","automake"]
	package{ $reqd_pkg:
		ensure => installed
		}
}
