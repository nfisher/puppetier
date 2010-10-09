class apache2-server {
	service { "apache2":
		ensure => running,
		require => Package["apache2-prefork"],
		#subscribe => File[httpdconf],
		}
	$reqd_pkgs = ["apache2-prefork"]
	package{$reqd_pkgs:
		ensure => installed
		}
}
