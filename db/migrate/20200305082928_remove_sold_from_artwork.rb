class RemoveSoldFromArtwork < ActiveRecord::Migration[6.0]
  def change

    remove_column :artworks, :sold, :boolean, default: false
  end
end
