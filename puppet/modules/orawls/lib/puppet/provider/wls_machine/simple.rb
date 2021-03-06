require 'easy_type'
require 'utils/wls_access'
require 'utils/erb_reader'


Puppet::Type.type(:wls_machine).provide(:simple) do
	include EasyType::Provider
	include Utils::WlsAccess
	extend Utils::ERBReader

  desc "Manage machine in an WebLogic domain via regular WLST"


  mk_resource_methods

end

