class AddNameToArtist < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :name, :string
    add_column :artists, :country, :string
  end
end
