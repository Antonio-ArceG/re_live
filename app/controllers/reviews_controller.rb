class ReviewsController < ApplicationController
  def new
      # we need @booking in our `simple_form_for`
      @booking = Booking.find(params[:booking_id])
      @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    if @review.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
 