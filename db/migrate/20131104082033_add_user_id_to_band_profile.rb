class AddUserIdToBandProfile < ActiveRecord::Migration
  def change
    add_column :band_profiles, :user_id, :integer
  end
end
