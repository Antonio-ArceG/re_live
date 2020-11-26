class Booking < ApplicationRecord
  enum booking_status: {awaiting_confirmation: 0, confirmed: 1, declined: 2}
  belongs_to :customer, class_name: 'User'
  belongs_to :memory
  has_one :review
  validates :location, :start_date, :price, presence: true
end
