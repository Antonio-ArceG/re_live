class AddBookingStatusToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :booking_status, :integer, default: 0
  end
end
