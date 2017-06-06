class Collection < ActiveRecord::Base
  belongs_to :artist
  has_many :base_songs , -> { order(position: :asc) }
end
