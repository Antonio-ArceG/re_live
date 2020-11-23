class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :duration
      t.string :location
      t.string :category
      t.references :creator, null: false, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
