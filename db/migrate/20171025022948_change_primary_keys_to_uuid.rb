class ChangePrimaryKeysToUuid < ActiveRecord::Migration
  def up
    tables = [
      "artists",
      "base_songs",
      "collections"
    ]

    tables.each do |table|
      remove_column table, :id
      rename_column table, :uuid, :id
      execute "ALTER TABLE #{table} ADD PRIMARY KEY (id);"
    end
  end
end
