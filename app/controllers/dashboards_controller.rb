class DashboardsController < ApplicationController 
    def index
      @my_bookings =  Booking.find_by(customer_id: current_user.id)
    end
    def my_memories
      @my_memories = Memory.find_by(creator_id: current_user.id)
    end        
end
