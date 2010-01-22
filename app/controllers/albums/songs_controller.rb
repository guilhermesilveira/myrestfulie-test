class Albums::SongsController < InheritedResources::Base
  defaults :route_prefix => nil
  actions :index, :show
  belongs_to :album
  
  def index
    collection # seta @songs com as songs do album
    
    feed = Atom::Feed.new do |f|
      f.id = "123456"
      f.title = "songs de um album"
      f.subtitle = 'bla'
      f.rights = "copyrighted"
      f.updated = Time.now
      f.authors << Atom::Person.new(:name => 'Abril Digital Inc')
      f.contributors << Atom::Person.new(:name => 'Abril Digital Inc')
      
      f.links << Atom::Link.new(:rel => "parent", :href => "http://localhost:3000/albums/1.xml")
      
      @songs.each do |song|
        f.entries << song.to_atom
      end     
    end
 
    
    respond_to do |format|
      format.xml { render :xml => feed.to_xml }
    end
  end
end