class ReviewsController < ApplicationController

	def index

		@reviews = find_hotel.reviews

	end

	def new

		@review = find_hotel.reviews.new

	end

	def create

		@hotel = find_hotel
		@review = @hotel.reviews.new(review_params)
		@hotel.save
		redirect_to hotel_path(@hotel)

	end

	private

	def find_hotel

		@hotel = Hotel.find(params[:hotel_id])

	end

	def review_params

		params.require(:review).permit(:body)

	end

end
