class Album < ActiveRecord::Base
	has_many :tracks
	belongs_to :band_profile
end
