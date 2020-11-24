class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :memory
  validates :location, :status, :start_date, :end_date, :price, presence: true
end
