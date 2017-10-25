class Collection < ActiveRecord::Base
  default_scope -> { order("created_at ASC") }
  belongs_to :artist
  has_many :base_songs , -> { order(position: :asc) }
end
