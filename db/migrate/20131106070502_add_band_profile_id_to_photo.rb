class AddBandProfileIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :band_profile_id, :integer
    add_index :photos, :band_profile_id
  end
end
