class BaseSong < ActiveRecord::Base
  belongs_to :artist
  belongs_to :collection
end
