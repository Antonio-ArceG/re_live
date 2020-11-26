class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(memory_id: params[:memory_id])
    @memory = Memory.find(params[:memory_id])
  end

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

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:notice] = "Successfully approved booking"
      redirect_to memory_bookings_path(@booking.memory)
    else
      render "bookings/index"
    end
  end

  def my_memories
    @my_memories = Memory.where(creator_id: current_user)
  end 

  private

  def booking_params
    params.require(:booking).permit(:start_date, :booking_status)
  end
end
