class Album < ActiveRecord::Base
  has_many :songs
  
  acts_as_restfulie do |album, t|
    t << [:songs, {:controller => 'albums/songs', :action => :index, :album_id => album.id }]
  end
end
