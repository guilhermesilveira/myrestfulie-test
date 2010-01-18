class Albums::SongsController < InheritedResources::Base
  defaults :routes_prefix => nil
  respond_to :html, :xml, :json  
end