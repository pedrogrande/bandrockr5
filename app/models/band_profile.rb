class BandProfile < ActiveRecord::Base
	belongs_to :user
	has_many :albums
	has_many :gigs
	has_many :members
	has_many :photos
	has_many :links
end
