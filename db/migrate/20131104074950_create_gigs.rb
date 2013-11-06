class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :title
      t.date :date
      t.time :start_time
      t.time :finish_time
      t.string :location
      t.string :street_address
      t.string :suburb
      t.string :tickets_url

      t.timestamps
    end
  end
end
