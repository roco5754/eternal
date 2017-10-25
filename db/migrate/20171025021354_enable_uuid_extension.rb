#All uuid transition code from: http://www.madebyloren.com/posts/migrating-to-uuids-as-primary-keys
class EnableUuidExtension < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
  end
end
