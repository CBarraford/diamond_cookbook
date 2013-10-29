maintainer       "Brightcove"
maintainer_email "cbarraford@brightcove.com"
license          "All rights reserved"
description      "Installs/Configures diamond"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.17"
name             "diamond"

supports         'ubuntu'
supports         'debian'
supports         'redhat', 'centos', 'scientific', 'amazon', 'fedora'

depends          'apt'
depends          'yum'
