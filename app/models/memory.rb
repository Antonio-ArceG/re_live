class Memory < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, :duration, :location, :category, presence: true
  validates :name, uniqueness: true
end
