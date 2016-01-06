class ReviewsController < ApplicationController

	def index

		@hotel = Hotel.find(params[:hotel_id])
		@reviews = @hotel.reviews 

	end

	def new

		@hotel = Hotel.find(params[:hotel_id])
		@review = @hotel.reviews.new

	end

	def create

		@hotel = Hotel.find(params[:hotel_id])
		@review = @hotel.reviews.new(review_params)
		@hotel.save
		redirect_to hotel_path(@hotel)

	end

	private

	def review_params

		params.require(:review).permit(:body)

	end

end
