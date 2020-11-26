class AddPhotoUrlToMemory < ActiveRecord::Migration[6.0]
  def change
    add_column :memories, :photo_url, :string, default: "https://res.cloudinary.com/drdoomsday/image/upload/v1605833611/sample.jpg"
  end
end
