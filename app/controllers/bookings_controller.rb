class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @memory = Memory.find(params[:memory_id])
    @booking.customer = current_user
    @booking.location = @memory.location
    @booking.price = @memory.price
    @booking.memory = @memory
    if @booking.save
      flash[:notice] = "Successfully booked #{@memory.name} at #{@booking.start_date.strftime("%A, %b %d")}"
      redirect_to memories_path
    else
      render "memories/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end
end
