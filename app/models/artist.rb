class Artist < ActiveRecord::Base
  has_many :collections
  has_many :base_songs, through: :collections
end
