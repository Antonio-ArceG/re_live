class MemoriesController < ApplicationController
    def show
    @memory = Memory.find(params[:id])
    end
  
end
