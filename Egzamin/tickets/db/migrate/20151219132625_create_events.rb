class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :artisi
      t.text :description
      t.decimal :price_low
      t.decimal :price_high
      t.date :event_date

      t.timestamps null: false
    end
  end
end
