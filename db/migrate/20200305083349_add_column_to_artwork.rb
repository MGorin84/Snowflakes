class AddColumnToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :sold, :boolean, default: false
  end
end
