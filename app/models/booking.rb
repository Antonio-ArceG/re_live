class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :memory
  has_one :review
  validates :location, :start_date, :price, presence: true
end
