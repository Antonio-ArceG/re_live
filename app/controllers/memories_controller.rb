class MemoriesController < ApplicationController
  def show
    @memory = Memory.find(params[:id])
  end

  private

  def memory_params
    params.require(:memory).permit(:name, :description, :price, :duration, :location, :category)
  end

end