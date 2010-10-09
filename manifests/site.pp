import "classes/*"
import "users/*"

case $operatingsystem {
  SLES: {
		Package{ provider => zypper }
		$reqd_pkgs = ["git-core"]
		package{$reqd_pkgs:
			ensure => installed
			}
	}
}

node default {
	include sudo
}

node "domu-12-31-38-04-28-a1.compute-1.internal" {
	include build-essentials
	include ruby
	include apache2-server
	include apache-passenger
	include mysql-server
	include nfisher
}
