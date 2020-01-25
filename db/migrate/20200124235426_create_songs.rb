class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :video_url
      t.integer :likes
      
      t.integer :artist_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
