name             'eos'
maintainer       'Arista Networks'
maintainer_email 'sprygada@aristanetworks.com'
license          'Apache v2.0'
description      'Implements an recipes for managing network resources on EOS devices'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

recipe "interface",
  "Manages physical interface resources on EOS based devices"
  
recipe "vlan",
  "Manages vlan resources on EOS based devices"

recipe "l2_interface",
  "Manages switchport resources on EOS based devices"
  
recipe "lag",
  "Manages lag (port-channel) resources on EOS based devices"

attribute 'eos/config/identifier',
  :display_name => "Identifier",
  :description => "The unique node identifier to use to local the data bag item",
  :type => "string",
  :required => "required",
  :receipes => ['interface', 'switchport', 'vlan', 'portchannel'],
  :default => "hostname"
  
attribute 'eos/config/databag',
  :display_name => "Data bag name",
  :description => 'The name of the data bag to use for finding settings',
  :type => 'string',
  :required => 'required',
  :receipes => ['interface', 'switchport', 'vlan', 'portchannel'],
  :default => 'eos_config'
  
attribute 'eos/config/provider',
  :display_name => 'Config provider',
  :description => 'The name of the provider for the EOS configuration',
  :type => 'string',
  :required => 'required',
  :receipes => ['interface', 'switchport', 'vlan', 'portchannel'],
  :default => 'databag'

