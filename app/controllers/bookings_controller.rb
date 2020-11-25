class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @memory = Memory.find(params[:memory_id])
  end

  def create
    @booking = booking.new(booking_params)
    @booking.creator = current_user
    if @booking.save
      redirect_to memories_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:location, :status, :price, :start_date, :end_date)
  end
end
