class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :seat
      t.text :address
      t.decimal :price
      t.string :email_address

      t.timestamps null: false
    end
  end
end
