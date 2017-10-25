class AddAssociationIndexes < ActiveRecord::Migration
  def up
    add_index :collections, :artist_id
    add_index :base_songs, :collection_id
  end
end
