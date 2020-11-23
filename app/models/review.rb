class Review < ApplicationRecord
  belongs_to :bookings
  validates :content, :rating, presence: true
  validates :rating, inclusion:  { in: 0..10 }
  validates :rating, numericality: { only_integer: true }
end
