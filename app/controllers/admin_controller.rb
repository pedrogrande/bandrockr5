class AdminController < ApplicationController
  def index
  	@band_profile = current_user.band_profile
  	if @band_profile
	  	@gigs = @band_profile.gigs
	  	@albums = @band_profile.albums
	  	@photos = @band_profile.photos
	  	@members = @band_profile.members
	  	@links = @band_profile.links
	end
  end
end
