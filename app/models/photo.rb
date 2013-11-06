class Photo < ActiveRecord::Base
	belongs_to :band_profile
	mount_uploader :image, BandPhotoUploader
end
