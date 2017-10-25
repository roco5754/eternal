class AddPositionToBaseSong < ActiveRecord::Migration
  def change
    add_column :base_songs, :position, :integer
  end
end
