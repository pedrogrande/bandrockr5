class Link < ActiveRecord::Base
  belongs_to :band_profile
  belongs_to :member
end
