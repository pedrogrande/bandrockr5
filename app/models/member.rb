class Member < ActiveRecord::Base
	belongs_to :band_profile
	has_many :links
end
