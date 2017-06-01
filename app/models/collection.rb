class Collection < ActiveRecord::Base
  belongs_to :Artist
  has_many :base_songs
end
