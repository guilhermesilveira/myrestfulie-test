class Album < ActiveRecord::Base
  has_many :songs
  
  acts_as_restfulie do |album, t|
    t << [:songs, {:controller => 'albums/songs', :action => :index, :album_id => album.id }]
    
  end
  
  def to_atom
    Atom::Entry.new do |entry|
      entry.title     = self.title

      entry.links << Atom::Link.new(:rel => 'self', 
                                   :href => "http://localhost:3000/albums/#{self.id}.xml")
      entry.links << Atom::Link.new(:rel => 'songs', 
                                   :href => "http://localhost:3000/albums/#{self.id}/songs.xml")
    end
  end
  
  
end
