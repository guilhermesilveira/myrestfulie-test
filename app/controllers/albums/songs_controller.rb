class Albums::SongsController < InheritedResources::Base
  defaults :route_prefix => nil
  belongs_to :album
  respond_to :html, :xml, :json 
end