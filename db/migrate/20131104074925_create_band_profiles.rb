class CreateBandProfiles < ActiveRecord::Migration
  def change
    create_table :band_profiles do |t|
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
