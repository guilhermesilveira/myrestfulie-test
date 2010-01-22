class AlbumsController < InheritedResources::Base
  actions :index, :show
  respond_to :html, :xml, :json
  
  def index
    @albums = Album.all
    render_collection @albums
  end
  
  def show
      @album = Album.find(params[:id])
      
      respond_to do |format|
        format.xml { render :xml => @album.to_atom.to_xml }
      end
    end
end
