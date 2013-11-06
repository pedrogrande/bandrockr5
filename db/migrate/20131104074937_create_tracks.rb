class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.references :album, index: true
      t.text :info
      t.string :buy_link

      t.timestamps
    end
  end
end
