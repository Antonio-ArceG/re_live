class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end

  def show
    @memory = Memory.find(params[:id])
    @booking = Booking.new
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.creator = current_user
    if @memory.save
      redirect_to memories_path
    else
      render :new
    end
  end

  private

  def memory_params
    params.require(:memory).permit(:name, :description, :price, :duration, :location, :category, :creator_id)
  end
end
