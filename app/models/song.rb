class Song < ActiveRecord::Base
  
  belongs_to :album
  
  acts_as_restfulie do |song, t|
    t << [:testando, {:controller => :songs, :action => :show}]
    
    t << [:album, {:controller => :albums, :action => :show, :id => song.album_id }]
    
  end

end
