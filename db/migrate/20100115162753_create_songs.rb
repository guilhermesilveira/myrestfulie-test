class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :title
      t.text :description
      t.belongs_to :album

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
