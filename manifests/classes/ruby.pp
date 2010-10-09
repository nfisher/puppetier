class ruby {
	$reqd_pkgs = ["rubygems","ruby","ruby-devel"]
	package{$reqd_pkgs:
		ensure => installed
		}
}
