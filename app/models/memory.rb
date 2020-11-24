class Memory < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  validates :name, :description, :price, :duration, :location, :category, presence: true
  validates :name, uniqueness: true
end
