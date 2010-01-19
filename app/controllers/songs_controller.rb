class SongsController < InheritedResources::Base
  include Restfulie::Server::Controller
  respond_to :html, :xml, :json
  
  def show
    @song = Song.find(params[:id])
    render_resource @song
  end
  
  
end
