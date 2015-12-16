class HotelsController < ApplicationController

	def index
		@hotels = Hotel.all
		@hotels = Hotel.order(title: :asc)
		@luxury_hotels = Hotel.luxury_hotels
		@bargain_hotels = Hotel.bargain_hotels
		@luxury_price_range_min = Hotel.luxury_price_range_min
		@luxury_price_range_max = Hotel.luxury_price_range_max
		@bargain_price_range_min = Hotel.bargain_price_range_min
		@bargain_price_range_max = Hotel.bargain_price_range_max
	end

	def show
		@hotel = Hotel.find(params[:id])
	end

	def edit
		@hotel = Hotel.find(params[:id])
	end

	def update
		@hotel = Hotel.find(params[:id])
		@hotel.update(hotel_params)
		flash[:notice] = "Congrats! You successfully updated this Hotel"
		redirect_to hotel_path(@hotel)
	end

	def new
		@hotel = Hotel.new
	end

	def create
		hotel = Hotel.create(hotel_params)
		redirect_to hotel_path(hotel)
	end

	def destroy
		Hotel.find(params[:id]).destroy
		redirect_to hotels_path
	end

	private

	def hotel_params
		params.require(:hotel).permit(:title, :body, :price)
	end

end
