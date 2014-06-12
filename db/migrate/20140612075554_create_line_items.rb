class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :music, index: true
      t.belongs_to :rate, index: true

      t.timestamps
    end
  end
end
