class mysql-server {
	$reqd_pkgs = ["mysql-client","mysql"]
	package{$reqd_pkgs:
		ensure => installed
		}
}
