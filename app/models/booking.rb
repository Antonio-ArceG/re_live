class Booking < ApplicationRecord
  belongs_to :users, :memories
  validates :location, :status, :start_date, :end_date, :price, presence: true
end
