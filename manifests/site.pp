import "classes/*"

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
	include apache2-server
	include ruby
	include mysql-server
}
