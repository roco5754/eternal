class AddUuidToEveryTable < ActiveRecord::Migration
  def up
    tables = [
      "artists",
      "base_songs",
      "collections"
    ]

    tables.each do |table|
      add_column table, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    end
  end
end
