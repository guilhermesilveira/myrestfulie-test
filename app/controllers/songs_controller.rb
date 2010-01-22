class SongsController < InheritedResources::Base
# class SongsController < ApplicationController
  # include Restfulie::Server::Controller
  # respond_to :atom
  actions :index, :show
    
  def show
      @song = Song.find(params[:id])
      # render_resource @song
      
      respond_to do |format|
        format.xml { render :xml => @song.to_atom.to_xml }
      end
    end
end
