class DashboardsController < ApplicationController 
    def index
      @my_bookings =  Booking.where(customer_id: current_user)
    end
    def my_memories
      @my_memories = Memory.where(creator_id: current_user)
    end        
end
