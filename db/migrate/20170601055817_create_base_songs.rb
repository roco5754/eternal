class CreateBaseSongs < ActiveRecord::Migration
  def change
    create_table :base_songs do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
