class HotelsController < ApplicationController

	def index
		@hotels = Hotel.all
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
