class AddFavoritesToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :favorite, :string
  end
end
