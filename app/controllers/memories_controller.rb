class MemoriesController < ApplicationController

    def index
        @memories = Memory.all
      end
    
      def show
        @memory = Memory.find(params[:id])
      end
    
      def new
        @memory = Memory.new
      end
      
      def create
        @memory = Memory.new(memory_params)
        @memory.save
        
        if @memory.save
            redirect_to memory_path(@memory)
        else
            render :new
        end
      end
    
      private
    
      def memory_params
        params.require(:memory).permit(:description, :price, :duration, :location, :category, :name, :creator_id)
      end

end