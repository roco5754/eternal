class Artist < ActiveRecord::Base
  default_scope -> { order("created_at ASC") }
  
  has_many :collections
  has_many :base_songs, through: :collections
end
