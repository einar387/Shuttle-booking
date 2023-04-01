class Shuttle < ApplicationRecord
  belongs_to :service
  validates :description, :setoff_time, :max_capacity, :presence => true
end
