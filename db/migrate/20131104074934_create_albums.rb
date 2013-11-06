class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.date :release_date
      t.text :info
      t.string :buy_link

      t.timestamps
    end
  end
end
