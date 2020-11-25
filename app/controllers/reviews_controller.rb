class ReviewsController < ApplicationController
    def new
        # we need @memory in our `simple_form_for`
        @memory = Memory.find(params[:memory_id])
        @review = Review.new
      end
end
 