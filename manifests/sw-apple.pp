define pkg_deploy($sourcedir = false)
{
  $sourcedir_real = $sourcedir ? {
    false => "http://puppet.reductivelabs.foo/osx/pkgs/apps",
    default => $sourcedir
  }
  package { $name:
    ensure => installed,
    provider => pkgdmg,
    source => "$sourcedir_real/$name"
  }
}

class sw-apple {
	case $operatingsystem {
		Darwin: {
			pkg_deploy { "", :alias => textmate }
		}
	}
}
