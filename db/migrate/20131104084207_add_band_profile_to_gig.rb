class AddBandProfileToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :band_profile_id, :integer
  end
end
