class BaseSong < ActiveRecord::Base
  belongs_to :artist
  belongs_to :collection
  # acts_as_list scope: :collection, top_of_list: 0
end
