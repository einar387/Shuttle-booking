class Service < ApplicationRecord
	has_many :shuttles
	has_many :passengers
	validates :description, :service_date, :presence => true
end
