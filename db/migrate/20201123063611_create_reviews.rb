class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :booking, foreign_key: true, null: false
      t.timestamps
    end
  end
end
