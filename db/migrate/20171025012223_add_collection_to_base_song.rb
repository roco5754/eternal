class AddCollectionToBaseSong < ActiveRecord::Migration
  def change
    add_reference :base_songs, :collection, index: true, foreign_key: true
  end
end
