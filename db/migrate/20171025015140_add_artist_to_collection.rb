class AddArtistToCollection < ActiveRecord::Migration
  def change
    add_reference :collections, :artist, index: true, foreign_key: true
  end
end
