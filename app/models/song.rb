class Song < ActiveRecord::Base
  belongs_to :album
  
  
  acts_as_restfulie do |song, t|
    t << [:testando, {:controller => :songs, :action => :show}]
    
    t << [:album, {:controller => :albums, :action => :show, :id => song.album_id }]
  end
  
  def to_atom
    Atom::Entry.new do |entry|
      entry.title     = self.title
      entry.updated   = self.updated_at
      entry.published = self.created_at
      entry.links     << Atom::Link.new(:rel => 'album', 
                                       :href => "http://localhost:3000/albums/#{self.album_id}.xml")
      entry.song_description = self.description
    end
  end

end
