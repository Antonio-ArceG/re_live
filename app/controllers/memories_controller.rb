class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end 
  
  def show
    @memory = Memory.find(params[:id])
    end
end
