class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :location
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.references :customer, null: false, index: true, foreign_key: { to_table: :users }
      t.references :memory, foreign_key: true, null: false

      t.timestamps
    end
  end
end
