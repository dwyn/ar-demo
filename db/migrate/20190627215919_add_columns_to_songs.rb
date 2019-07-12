class AddColumnsToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :artist_id, :integer
    add_column :songs, :title, :string
    add_column :songs, :length, :integer
  end
end
