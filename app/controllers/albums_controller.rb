class AlbumsController < InheritedResources::Base
  respond_to :html, :xml, :json
  
  def index
    @albums = Album.all
    render_collection @albums
  end
  
end
