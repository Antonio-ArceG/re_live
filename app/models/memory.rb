class Memory < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :creator, class_name: 'User'
  validates :name, :description, :price, :duration, :location, :category, presence: true
  validates :name, uniqueness: true
end
