class BaseSong < ActiveRecord::Base
  default_scope -> { order("created_at ASC") }
  belongs_to :artist
  belongs_to :collection
  # acts_as_list scope: :collection, top_of_list: 0
end
