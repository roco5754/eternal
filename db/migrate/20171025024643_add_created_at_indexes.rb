class AddCreatedAtIndexes < ActiveRecord::Migration
  def up
    add_index :collections, :created_at
    add_index :artists, :created_at
    add_index :base_songs, :created_at
  end
end
