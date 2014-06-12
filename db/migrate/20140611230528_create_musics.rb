class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :Artist
      t.string :Album
      t.text :description
      t.decimal :ratings
      t.string :picture

      t.timestamps
    end
  end
end
