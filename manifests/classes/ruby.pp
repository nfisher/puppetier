class ruby {
	$reqd_pkgs = ["rubygems","ruby","ruby-devel"]
	package{$reqd_pkgs:
		ensure => installed
		}
}

# TODO: Fork this based on distro currently only confirmed with SLES
class apache-passenger {
	$reqd_pkgs = ["passenger"]
	package{$reqd_pkgs:
		ensure => installed,
		provider => gem,
		require => package["make"]
		}
	exec{"/usr/bin/passenger-install-apache2-module -a":
		require => [package["passenger"],package["apache2-devel"]],
		unless => "/usr/bin/test -e /usr/lib64/ruby/gems/1.8/gems/passenger-2.2.15/lib/native_support.so"
		}
}
