class Service < ApplicationRecord
	has_many :shuttles
	validates :description, :service_date, :presence => true
end
